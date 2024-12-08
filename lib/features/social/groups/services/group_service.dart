import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/group_models.dart';
import '../../notifications/services/push_notification_service.dart';
import '../../../core/error/error_handler.dart';

class GroupService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final PushNotificationService _notificationService;
  final ErrorHandler _errorHandler;

  GroupService({
    PushNotificationService? notificationService,
    ErrorHandler? errorHandler,
  })  : _notificationService = notificationService ?? PushNotificationService(),
        _errorHandler = errorHandler ?? ErrorHandler();

  Future<Group> createGroup(GroupCreationData data) async {
    try {
      final groupRef = _firestore.collection('groups').doc();
      final group = Group(
        id: groupRef.id,
        name: data.name,
        description: data.description,
        createdBy: data.creatorId,
        createdAt: DateTime.now(),
        isPublic: data.isPublic,
        tags: data.tags,
        rules: data.rules,
        memberCount: 1,
        settings: GroupSettings(
          joinApprovalRequired: data.settings.joinApprovalRequired,
          postApprovalRequired: data.settings.postApprovalRequired,
          allowMemberInvites: data.settings.allowMemberInvites,
        ),
      );

      await groupRef.set(group.toJson());

      // Add creator as admin
      await _addGroupMember(
        groupId: group.id,
        userId: data.creatorId,
        role: GroupMemberRole.admin,
      );

      return group;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group creation',
      );
    }
  }

  Future<void> updateGroup(String groupId, GroupUpdateData data) async {
    try {
      await _firestore.collection('groups').doc(groupId).update(data.toJson());

      // Notify members of changes
      await _notifyGroupMembers(
        groupId: groupId,
        title: 'Group Updated',
        body: 'Group settings have been updated',
        data: {'type': 'group_update', 'groupId': groupId},
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group update',
      );
    }
  }

  Future<void> deleteGroup(String groupId) async {
    try {
      // Get all members for notification
      final members = await _firestore
          .collection('group_members')
          .where('groupId', isEqualTo: groupId)
          .get();

      // Delete group and all related data
      await _firestore.runTransaction((transaction) async {
        // Delete group document
        transaction.delete(_firestore.collection('groups').doc(groupId));

        // Delete all member records
        for (var member in members.docs) {
          transaction.delete(member.reference);
        }

        // Delete all group posts
        final posts = await _firestore
            .collection('group_posts')
            .where('groupId', isEqualTo: groupId)
            .get();
        for (var post in posts.docs) {
          transaction.delete(post.reference);
        }
      });

      // Notify members
      for (var member in members.docs) {
        await _notificationService.sendSocialNotification(
          recipient: member.data()['userId'] as String,
          title: 'Group Deleted',
          body: 'A group you were a member of has been deleted',
          data: {'type': 'group_deleted', 'groupId': groupId},
        );
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group deletion',
      );
    }
  }

  Future<void> joinGroup(String groupId, String userId) async {
    try {
      final groupDoc = await _firestore.collection('groups').doc(groupId).get();
      final group = Group.fromJson(groupDoc.data()!);

      if (group.settings.joinApprovalRequired) {
        // Create join request
        await _createJoinRequest(groupId: groupId, userId: userId);
      } else {
        // Direct join
        await _addGroupMember(
          groupId: groupId,
          userId: userId,
          role: GroupMemberRole.member,
        );
      }
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group join',
      );
    }
  }

  Future<void> leaveGroup(String groupId, String userId) async {
    try {
      await _removeGroupMember(groupId: groupId, userId: userId);
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group leave',
      );
    }
  }

  Future<void> inviteMember(
    String groupId,
    String inviterId,
    String inviteeId,
  ) async {
    try {
      // Check inviter permissions
      final inviterRole = await _getMemberRole(groupId, inviterId);
      if (!_canInviteMembers(inviterRole)) {
        throw Exception('Insufficient permissions to invite members');
      }

      // Create invitation
      await _createInvitation(
        groupId: groupId,
        inviterId: inviterId,
        inviteeId: inviteeId,
      );
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Group invitation',
      );
    }
  }

  Future<void> respondToInvitation(
    String invitationId,
    bool accept,
  ) async {
    try {
      final invitationDoc = await _firestore
          .collection('group_invitations')
          .doc(invitationId)
          .get();
      final invitation = GroupInvitation.fromJson(invitationDoc.data()!);

      if (accept) {
        await _addGroupMember(
          groupId: invitation.groupId,
          userId: invitation.inviteeId,
          role: GroupMemberRole.member,
        );
      }

      await invitationDoc.reference.update({'status': accept ? 'accepted' : 'declined'});
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Invitation response',
      );
    }
  }

  Future<void> updateMemberRole(
    String groupId,
    String userId,
    GroupMemberRole newRole,
  ) async {
    try {
      await _firestore
          .collection('group_members')
          .where('groupId', isEqualTo: groupId)
          .where('userId', isEqualTo: userId)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          return snapshot.docs.first.reference.update({'role': newRole.toString()});
        }
      });
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Role update',
      );
    }
  }

  Future<List<Group>> getUserGroups(String userId) async {
    try {
      final memberships = await _firestore
          .collection('group_members')
          .where('userId', isEqualTo: userId)
          .get();

      final groups = <Group>[];
      for (var doc in memberships.docs) {
        final groupDoc = await _firestore
            .collection('groups')
            .doc(doc.data()['groupId'] as String)
            .get();
        if (groupDoc.exists) {
          groups.add(Group.fromJson(groupDoc.data()!));
        }
      }

      return groups;
    } catch (error) {
      return _errorHandler.handleError(
        () => Future.error(error),
        context: 'Get user groups',
      );
    }
  }

  Future<void> _addGroupMember({
    required String groupId,
    required String userId,
    required GroupMemberRole role,
  }) async {
    await _firestore.runTransaction((transaction) async {
      // Add member record
      final memberRef = _firestore.collection('group_members').doc();
      transaction.set(memberRef, {
        'groupId': groupId,
        'userId': userId,
        'role': role.toString(),
        'joinedAt': DateTime.now(),
      });

      // Update member count
      final groupRef = _firestore.collection('groups').doc(groupId);
      final groupDoc = await transaction.get(groupRef);
      transaction.update(groupRef, {
        'memberCount': (groupDoc.data()!['memberCount'] as int) + 1,
      });
    });
  }

  Future<void> _removeGroupMember({
    required String groupId,
    required String userId,
  }) async {
    await _firestore.runTransaction((transaction) async {
      // Remove member record
      final memberSnapshot = await _firestore
          .collection('group_members')
          .where('groupId', isEqualTo: groupId)
          .where('userId', isEqualTo: userId)
          .get();

      if (memberSnapshot.docs.isNotEmpty) {
        transaction.delete(memberSnapshot.docs.first.reference);

        // Update member count
        final groupRef = _firestore.collection('groups').doc(groupId);
        final groupDoc = await transaction.get(groupRef);
        transaction.update(groupRef, {
          'memberCount': (groupDoc.data()!['memberCount'] as int) - 1,
        });
      }
    });
  }

  Future<void> _createJoinRequest({
    required String groupId,
    required String userId,
  }) async {
    final requestRef = _firestore.collection('group_join_requests').doc();
    await requestRef.set({
      'groupId': groupId,
      'userId': userId,
      'status': 'pending',
      'createdAt': DateTime.now(),
    });

    // Notify group admins
    await _notifyGroupAdmins(
      groupId: groupId,
      title: 'New Join Request',
      body: 'Someone wants to join your group',
      data: {
        'type': 'join_request',
        'groupId': groupId,
        'requestId': requestRef.id,
      },
    );
  }

  Future<void> _createInvitation({
    required String groupId,
    required String inviterId,
    required String inviteeId,
  }) async {
    final invitationRef = _firestore.collection('group_invitations').doc();
    await invitationRef.set({
      'groupId': groupId,
      'inviterId': inviterId,
      'inviteeId': inviteeId,
      'status': 'pending',
      'createdAt': DateTime.now(),
    });

    await _notificationService.sendSocialNotification(
      recipient: inviteeId,
      title: 'Group Invitation',
      body: 'You have been invited to join a group',
      data: {
        'type': 'group_invitation',
        'groupId': groupId,
        'invitationId': invitationRef.id,
      },
    );
  }

  Future<GroupMemberRole> _getMemberRole(String groupId, String userId) async {
    final memberDoc = await _firestore
        .collection('group_members')
        .where('groupId', isEqualTo: groupId)
        .where('userId', isEqualTo: userId)
        .get();

    if (memberDoc.docs.isNotEmpty) {
      return GroupMemberRole.values.firstWhere(
        (role) => role.toString() == memberDoc.docs.first.data()['role'],
      );
    }
    throw Exception('User is not a member of the group');
  }

  bool _canInviteMembers(GroupMemberRole role) {
    return role == GroupMemberRole.admin || role == GroupMemberRole.moderator;
  }

  Future<void> _notifyGroupMembers({
    required String groupId,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    final members = await _firestore
        .collection('group_members')
        .where('groupId', isEqualTo: groupId)
        .get();

    for (var member in members.docs) {
      await _notificationService.sendSocialNotification(
        recipient: member.data()['userId'] as String,
        title: title,
        body: body,
        data: data,
      );
    }
  }

  Future<void> _notifyGroupAdmins({
    required String groupId,
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    final admins = await _firestore
        .collection('group_members')
        .where('groupId', isEqualTo: groupId)
        .where('role', isEqualTo: GroupMemberRole.admin.toString())
        .get();

    for (var admin in admins.docs) {
      await _notificationService.sendSocialNotification(
        recipient: admin.data()['userId'] as String,
        title: title,
        body: body,
        data: data,
      );
    }
  }
}
