import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';

enum ContentType {
  post,
  comment,
  message,
  profile,
  @JsonValue('catch')
  fishCatch,
}

enum ReportReason {
  spam,
  inappropriate,
  harassment,
  falseInformation,
  fraud,
  other,
}

class ModerationService {
  final FirebaseFirestore _firestore;
  final FirebaseFunctions _functions;

  ModerationService(this._firestore, this._functions);

  // Content Reporting
  Future<void> reportContent({
    required String contentId,
    required ContentType contentType,
    required String reporterId,
    required ReportReason reason,
    String? details,
  }) async {
    final report = {
      'contentId': contentId,
      'contentType': contentType.toString(),
      'reporterId': reporterId,
      'reason': reason.toString(),
      'details': details,
      'timestamp': FieldValue.serverTimestamp(),
      'status': 'pending',
    };

    final batch = _firestore.batch();

    // Create report
    final reportRef = _firestore.collection('reports').doc();
    batch.set(reportRef, report);

    // Update content report count
    final contentRef = _getContentReference(contentId, contentType);
    if (contentRef != null) {
      batch.update(contentRef, {
        'reportCount': FieldValue.increment(1),
      });
    }

    await batch.commit();

    // Trigger moderation review if threshold reached
    await _checkReportThreshold(contentId, contentType);
  }

  // User Blocking
  Future<void> blockUser(String userId, String blockedUserId) async {
    final batch = _firestore.batch();

    // Add to blocked users
    batch.set(
      _firestore
          .collection('users')
          .doc(userId)
          .collection('blocked')
          .doc(blockedUserId),
      {
        'timestamp': FieldValue.serverTimestamp(),
      },
    );

    // Remove from following/followers if exists
    final followingRef = _firestore
        .collection('users')
        .doc(userId)
        .collection('following')
        .doc(blockedUserId);
    final followerRef = _firestore
        .collection('users')
        .doc(blockedUserId)
        .collection('followers')
        .doc(userId);

    final followingDoc = await followingRef.get();
    final followerDoc = await followerRef.get();

    if (followingDoc.exists) batch.delete(followingRef);
    if (followerDoc.exists) batch.delete(followerRef);

    await batch.commit();
  }

  Future<void> unblockUser(String userId, String blockedUserId) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('blocked')
        .doc(blockedUserId)
        .delete();
  }

  Future<List<String>> getBlockedUsers(String userId) async {
    final snapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('blocked')
        .get();

    return snapshot.docs.map((doc) => doc.id).toList();
  }

  // Content Moderation
  Future<void> moderateContent(
    String contentId,
    ContentType contentType,
    String moderatorId,
    String action,
    String? reason,
  ) async {
    final batch = _firestore.batch();

    // Update content status
    final contentRef = _getContentReference(contentId, contentType);
    if (contentRef != null) {
      batch.update(contentRef, {
        'moderationStatus': action,
        'moderatedBy': moderatorId,
        'moderatedAt': FieldValue.serverTimestamp(),
        'moderationReason': reason,
      });
    }

    // Update related reports
    final reports = await _firestore
        .collection('reports')
        .where('contentId', isEqualTo: contentId)
        .where('status', isEqualTo: 'pending')
        .get();

    for (var doc in reports.docs) {
      batch.update(doc.reference, {
        'status': 'resolved',
        'resolution': action,
        'resolvedBy': moderatorId,
        'resolvedAt': FieldValue.serverTimestamp(),
      });
    }

    await batch.commit();

    // If content is removed, notify the content owner
    if (action == 'remove') {
      await _notifyContentOwner(contentId, contentType, reason);
    }
  }

  // Automated Moderation
  Future<Map<String, dynamic>> checkContent(String text) async {
    try {
      final result = await _functions.httpsCallable('moderateContent').call({
        'text': text,
      });
      return Map<String, dynamic>.from(result.data);
    } catch (e) {
      print('Error checking content: $e');
      rethrow;
    }
  }

  // Helper Methods
  DocumentReference? _getContentReference(
    String contentId,
    ContentType contentType,
  ) {
    switch (contentType) {
      case ContentType.post:
        return _firestore.collection('posts').doc(contentId);
      case ContentType.comment:
        return _firestore.collection('comments').doc(contentId);
      case ContentType.message:
        return _firestore.collection('messages').doc(contentId);
      case ContentType.profile:
        return _firestore.collection('users').doc(contentId);
      case ContentType.fishCatch:
        return _firestore.collection('catches').doc(contentId);
    }
  }

  Future<void> _checkReportThreshold(
    String contentId,
    ContentType contentType,
  ) async {
    final reports = await _firestore
        .collection('reports')
        .where('contentId', isEqualTo: contentId)
        .where('status', isEqualTo: 'pending')
        .get();

    if (reports.size >= 5) {
      // Auto-hide content and notify moderators
      final contentRef = _getContentReference(contentId, contentType);
      if (contentRef != null) {
        await contentRef.update({
          'hidden': true,
          'hiddenReason': 'Multiple reports received',
          'hiddenAt': FieldValue.serverTimestamp(),
        });
      }

      // Notify moderators
      await _notifyModerators(contentId, contentType);
    }
  }

  Future<void> _notifyContentOwner(
    String contentId,
    ContentType contentType,
    String? reason,
  ) async {
    final content = await _getContentReference(contentId, contentType)?.get();
    if (content == null || !content.exists) return;

    final data = content.data() as Map<String, dynamic>;
    final ownerId = data['userId'] as String;

    await _firestore.collection('notifications').add({
      'userId': ownerId,
      'type': 'moderation',
      'contentId': contentId,
      'contentType': contentType.toString(),
      'reason': reason,
      'timestamp': FieldValue.serverTimestamp(),
      'read': false,
    });
  }

  Future<void> _notifyModerators(String contentId, ContentType contentType) async {
    final moderators = await _firestore
        .collection('users')
        .where('roles', arrayContains: 'moderator')
        .get();

    final batch = _firestore.batch();
    for (var moderator in moderators.docs) {
      batch.set(_firestore.collection('notifications').doc(), {
        'userId': moderator.id,
        'type': 'moderation_needed',
        'contentId': contentId,
        'contentType': contentType.toString(),
        'timestamp': FieldValue.serverTimestamp(),
        'read': false,
      });
    }

    await batch.commit();
  }
}
