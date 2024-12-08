import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/admin_models.dart';
import '../repositories/admin_repository.dart';

final adminServiceProvider = Provider((ref) {
  return AdminService(ref.watch(adminRepositoryProvider));
});

class AdminService {
  final AdminRepository _repository;

  AdminService(this._repository);

  // User Management
  Future<void> createAdminUser(AdminUser user) async {
    await _repository.createAdminUser(user);
  }

  Future<void> updateAdminUser(AdminUser user) async {
    await _repository.updateAdminUser(user);
  }

  Future<void> deleteAdminUser(String userId) async {
    await _repository.deleteAdminUser(userId);
  }

  Future<AdminUser?> getAdminUser(String userId) async {
    return _repository.getAdminUser(userId);
  }

  // Role Management
  Future<void> assignRole(String userId, UserRole role) async {
    final user = await _repository.getAdminUser(userId);
    if (user == null) throw Exception('User not found');

    final updatedRoles = List<UserRole>.from(user.roles)..add(role);
    final updatedPermissions = _mergePermissions(updatedRoles);

    await _repository.updateAdminUser(
      user.copyWith(
        roles: updatedRoles,
        permissions: updatedPermissions,
      ),
    );
  }

  Future<void> removeRole(String userId, UserRole role) async {
    final user = await _repository.getAdminUser(userId);
    if (user == null) throw Exception('User not found');

    final updatedRoles = List<UserRole>.from(user.roles)..remove(role);
    if (updatedRoles.isEmpty) {
      throw Exception('Cannot remove last role');
    }

    final updatedPermissions = _mergePermissions(updatedRoles);

    await _repository.updateAdminUser(
      user.copyWith(
        roles: updatedRoles,
        permissions: updatedPermissions,
      ),
    );
  }

  AdminPermissions _mergePermissions(List<UserRole> roles) {
    var permissions = const AdminPermissions();
    for (final role in roles) {
      final rolePermissions = AdminPermissions.forRole(role);
      permissions = permissions.copyWith(
        canManageUsers: permissions.canManageUsers || rolePermissions.canManageUsers,
        canManageRoles: permissions.canManageRoles || rolePermissions.canManageRoles,
        canViewAnalytics: permissions.canViewAnalytics || rolePermissions.canViewAnalytics,
        canManageContent: permissions.canManageContent || rolePermissions.canManageContent,
        canHandleSupport: permissions.canHandleSupport || rolePermissions.canHandleSupport,
        canManageBans: permissions.canManageBans || rolePermissions.canManageBans,
        canAccessLogs: permissions.canAccessLogs || rolePermissions.canAccessLogs,
        canManageSettings: permissions.canManageSettings || rolePermissions.canManageSettings,
        canExportData: permissions.canExportData || rolePermissions.canExportData,
        canManagePayments: permissions.canManagePayments || rolePermissions.canManagePayments,
      );
    }
    return permissions;
  }

  // Access Control
  Future<bool> hasPermission(String userId, String permission) async {
    final user = await _repository.getAdminUser(userId);
    if (user == null) return false;

    return switch (permission) {
      String p when p == 'manageUsers' => user.permissions.canManageUsers,
      String p when p == 'manageRoles' => user.permissions.canManageRoles,
      String p when p == 'viewAnalytics' => user.permissions.canViewAnalytics,
      String p when p == 'manageContent' => user.permissions.canManageContent,
      String p when p == 'handleSupport' => user.permissions.canHandleSupport,
      _ => false,
    };
  }

  // User Analytics
  Future<UserAnalytics> getUserAnalytics(String userId) async {
    return _repository.getUserAnalytics(userId);
  }

  Future<void> updateUserAnalytics(UserAnalytics analytics) async {
    await _repository.updateUserAnalytics(analytics);
  }

  // Support Tools
  Future<String> createSupportTicket(SupportTicket ticket) async {
    return _repository.createSupportTicket(ticket);
  }

  Future<void> updateTicket(SupportTicket ticket) async {
    await _repository.updateTicket(ticket);
  }

  Future<void> assignTicket(String ticketId, String adminId) async {
    final ticket = await _repository.getTicket(ticketId);
    if (ticket == null) throw Exception('Ticket not found');

    await _repository.updateTicket(
      ticket.copyWith(
        assignedTo: adminId,
        status: TicketStatus.inProgress,
      ),
    );
  }

  Future<void> addTicketUpdate(TicketUpdate update) async {
    await _repository.addTicketUpdate(update);
  }

  Future<List<SupportTicket>> getOpenTickets() async {
    return _repository.getTickets(
      status: [TicketStatus.open, TicketStatus.inProgress, TicketStatus.waitingForUser],
    );
  }

  // Ban Management
  Future<void> banUser(UserBan ban) async {
    await _repository.banUser(ban);
  }

  Future<void> unbanUser(String userId) async {
    await _repository.unbanUser(userId);
  }

  Future<UserBan?> getUserBan(String userId) async {
    return _repository.getUserBan(userId);
  }

  Future<bool> isUserBanned(String userId) async {
    final ban = await getUserBan(userId);
    if (ban == null) return false;

    if (ban.endTime != null) {
      return ban.endTime!.isAfter(DateTime.now());
    }
    return true;
  }

  // Audit Logging
  Future<void> logAdminAction({
    required String adminId,
    required String action,
    required String targetId,
    required Map<String, dynamic> details,
  }) async {
    await _repository.logAdminAction(
      adminId: adminId,
      action: action,
      targetId: targetId,
      details: details,
      timestamp: DateTime.now(),
    );
  }

  // Batch Operations
  Future<void> bulkUpdateRoles({
    required List<String> userIds,
    required UserRole role,
    required bool add,
  }) async {
    for (final userId in userIds) {
      try {
        if (add) {
          await assignRole(userId, role);
        } else {
          await removeRole(userId, role);
        }
      } catch (e) {
        print('Failed to update role for user $userId: $e');
        continue;
      }
    }
  }

  Future<void> bulkBanUsers({
    required List<String> userIds,
    required String reason,
    required String adminId,
    BanType? type,
    DateTime? endTime,
  }) async {
    for (final userId in userIds) {
      try {
        await banUser(
          UserBan(
            userId: userId,
            reason: reason,
            adminId: adminId,
            startTime: DateTime.now(),
            endTime: endTime,
            type: type,
          ),
        );
      } catch (e) {
        print('Failed to ban user $userId: $e');
        continue;
      }
    }
  }
}
