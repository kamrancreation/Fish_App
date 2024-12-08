import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/admin_models.dart';

final adminRepositoryProvider = Provider((ref) => AdminRepository());

class AdminRepository {
  final _adminCollection = FirebaseFirestore.instance.collection('admin');
  final _usersCollection = FirebaseFirestore.instance.collection('users');
  final _analyticsCollection = FirebaseFirestore.instance.collection('user_analytics');
  final _ticketsCollection = FirebaseFirestore.instance.collection('support_tickets');
  final _bansCollection = FirebaseFirestore.instance.collection('user_bans');
  final _auditCollection = FirebaseFirestore.instance.collection('admin_audit_logs');

  // Admin User Management
  Future<void> createAdminUser(AdminUser user) async {
    await _adminCollection.doc(user.id).set(user.toJson());
  }

  Future<void> updateAdminUser(AdminUser user) async {
    await _adminCollection.doc(user.id).update(user.toJson());
  }

  Future<void> deleteAdminUser(String userId) async {
    await _adminCollection.doc(userId).delete();
  }

  Future<AdminUser?> getAdminUser(String userId) async {
    final doc = await _adminCollection.doc(userId).get();
    if (!doc.exists) return null;
    return AdminUser.fromJson(doc.data()!);
  }

  Future<List<AdminUser>> getAdminUsers({List<UserRole>? roles}) async {
    var query = _adminCollection.orderBy('createdAt', descending: true);
    
    if (roles != null && roles.isNotEmpty) {
      query = query.where('roles', arrayContainsAny: roles.map((r) => r.name).toList());
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => AdminUser.fromJson(doc.data())).toList();
  }

  // User Analytics
  Future<UserAnalytics> getUserAnalytics(String userId) async {
    final doc = await _analyticsCollection.doc(userId).get();
    if (!doc.exists) {
      return UserAnalytics(
        userId: userId,
        lastActive: DateTime.now(),
        totalLogins: 0,
        contentCount: 0,
        activityMetrics: {},
        engagementScores: {},
      );
    }
    return UserAnalytics.fromJson(doc.data()!);
  }

  Future<void> updateUserAnalytics(UserAnalytics analytics) async {
    await _analyticsCollection.doc(analytics.userId).set(analytics.toJson());
  }

  // Support Tickets
  Future<String> createSupportTicket(SupportTicket ticket) async {
    final doc = await _ticketsCollection.add(ticket.toJson());
    return doc.id;
  }

  Future<void> updateTicket(SupportTicket ticket) async {
    await _ticketsCollection.doc(ticket.id).update(ticket.toJson());
  }

  Future<SupportTicket?> getTicket(String ticketId) async {
    final doc = await _ticketsCollection.doc(ticketId).get();
    if (!doc.exists) return null;
    return SupportTicket.fromJson(doc.data()!);
  }

  Future<List<SupportTicket>> getTickets({
    List<TicketStatus>? status,
    String? assignedTo,
    TicketPriority? minPriority,
  }) async {
    var query = _ticketsCollection.orderBy('createdAt', descending: true);

    if (status != null && status.isNotEmpty) {
      query = query.where('status', whereIn: status.map((s) => s.name).toList());
    }

    if (assignedTo != null) {
      query = query.where('assignedTo', isEqualTo: assignedTo);
    }

    if (minPriority != null) {
      query = query.where('priority', isGreaterThanOrEqualTo: minPriority.name);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => SupportTicket.fromJson(doc.data())).toList();
  }

  Future<void> addTicketUpdate(TicketUpdate update) async {
    await _ticketsCollection.doc(update.ticketId).update({
      'updates': FieldValue.arrayUnion([update.toJson()]),
    });
  }

  // Ban Management
  Future<void> banUser(UserBan ban) async {
    await _bansCollection.doc(ban.userId).set(ban.toJson());
    
    // Update user status
    await _usersCollection.doc(ban.userId).update({
      'status': 'banned',
      'banInfo': ban.toJson(),
    });
  }

  Future<void> unbanUser(String userId) async {
    await _bansCollection.doc(userId).delete();
    
    // Update user status
    await _usersCollection.doc(userId).update({
      'status': 'active',
      'banInfo': FieldValue.delete(),
    });
  }

  Future<UserBan?> getUserBan(String userId) async {
    final doc = await _bansCollection.doc(userId).get();
    if (!doc.exists) return null;
    return UserBan.fromJson(doc.data()!);
  }

  Future<List<UserBan>> getActiveBans() async {
    final now = DateTime.now();
    final snapshot = await _bansCollection
        .where('endTime', isGreaterThan: now)
        .orderBy('endTime')
        .get();

    return snapshot.docs.map((doc) => UserBan.fromJson(doc.data())).toList();
  }

  // Audit Logging
  Future<void> logAdminAction({
    required String adminId,
    required String action,
    required String targetId,
    required Map<String, dynamic> details,
    required DateTime timestamp,
  }) async {
    await _auditCollection.add({
      'adminId': adminId,
      'action': action,
      'targetId': targetId,
      'details': details,
      'timestamp': timestamp,
    });
  }

  Future<List<Map<String, dynamic>>> getAuditLogs({
    String? adminId,
    String? action,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var query = _auditCollection.orderBy('timestamp', descending: true);

    if (adminId != null) {
      query = query.where('adminId', isEqualTo: adminId);
    }

    if (action != null) {
      query = query.where('action', isEqualTo: action);
    }

    if (startDate != null) {
      query = query.where('timestamp', isGreaterThanOrEqualTo: startDate);
    }

    if (endDate != null) {
      query = query.where('timestamp', isLessThanOrEqualTo: endDate);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  // Batch Operations
  Future<void> bulkUpdateUserStatus(List<String> userIds, String status) async {
    final batch = FirebaseFirestore.instance.batch();
    
    for (final userId in userIds) {
      final userRef = _usersCollection.doc(userId);
      batch.update(userRef, {'status': status});
    }

    await batch.commit();
  }

  Future<Map<String, dynamic>> getAdminStats() async {
    final adminCount = (await _adminCollection.count().get()).count;
    final openTickets = (await _ticketsCollection
            .where('status', whereIn: ['open', 'inProgress'])
            .count()
            .get())
        .count;
    final activeBans = (await _bansCollection
            .where('endTime', isGreaterThan: DateTime.now())
            .count()
            .get())
        .count;

    return {
      'adminCount': adminCount,
      'openTickets': openTickets,
      'activeBans': activeBans,
      'lastUpdated': DateTime.now(),
    };
  }
}
