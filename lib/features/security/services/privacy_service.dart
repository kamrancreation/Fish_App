import '../models/privacy_models.dart';
import '../repositories/privacy_repository.dart';

class PrivacyService {
  final PrivacyRepository _repository;

  PrivacyService(this._repository);

  // Location Privacy
  Future<LocationPrivacy> getLocationPrivacy(String userId) async {
    return _repository.getLocationPrivacy(userId);
  }

  Future<void> updateLocationPrivacy({
    required String userId,
    required bool shareLocation,
    required String precision,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
    Map<String, bool>? featureSettings,
  }) async {
    await _repository.updateLocationPrivacy(
      userId: userId,
      shareLocation: shareLocation,
      precision: precision,
      allowedUsers: allowedUsers,
      blockedUsers: blockedUsers,
      featureSettings: featureSettings,
    );
  }

  // Data Sharing
  Future<DataSharingSettings> getDataSharingSettings(String userId) async {
    return _repository.getDataSharingSettings(userId);
  }

  Future<void> updateDataSharingSettings({
    required String userId,
    required Map<String, String> dataTypes,
    required Map<String, List<String>> allowedUsers,
    required Map<String, bool> thirdPartySharing,
  }) async {
    await _repository.updateDataSharingSettings(
      userId: userId,
      dataTypes: dataTypes,
      allowedUsers: allowedUsers,
      thirdPartySharing: thirdPartySharing,
    );
  }

  // Profile Visibility
  Future<ProfileVisibility> getProfileVisibility(String userId) async {
    return _repository.getProfileVisibility(userId);
  }

  Future<void> updateProfileVisibility({
    required String userId,
    required String defaultVisibility,
    required Map<String, String> fieldVisibility,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
  }) async {
    await _repository.updateProfileVisibility(
      userId: userId,
      defaultVisibility: defaultVisibility,
      fieldVisibility: fieldVisibility,
      allowedUsers: allowedUsers,
      blockedUsers: blockedUsers,
    );
  }

  // Content Access
  Future<ContentAccess> getContentAccess(String contentId) async {
    return _repository.getContentAccess(contentId);
  }

  Future<void> updateContentAccess({
    required String contentId,
    required String visibility,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
    Map<String, dynamic>? permissions,
  }) async {
    await _repository.updateContentAccess(
      contentId: contentId,
      visibility: visibility,
      allowedUsers: allowedUsers,
      blockedUsers: blockedUsers,
      permissions: permissions,
    );
  }

  Future<bool> hasContentAccess(String userId, String contentId) async {
    final content = await getContentAccess(contentId);
    
    if (content.ownerId == userId) return true;
    if (content.blockedUsers.contains(userId)) return false;
    
    switch (content.visibility) {
      case 'public':
        return true;
      case 'private':
        return content.allowedUsers.contains(userId);
      case 'friends':
        final friendControl = await getFriendControl(userId);
        return friendControl.friendList.contains(content.ownerId);
      default:
        return false;
    }
  }

  // Friend Controls
  Future<FriendControl> getFriendControl(String userId) async {
    return _repository.getFriendControl(userId);
  }

  Future<void> updateFriendControl({
    required String userId,
    required bool allowFriendRequests,
    List<String>? friendList,
    List<String>? pendingRequests,
    List<String>? blockedUsers,
    Map<String, String>? friendGroups,
  }) async {
    await _repository.updateFriendControl(
      userId: userId,
      allowFriendRequests: allowFriendRequests,
      friendList: friendList,
      pendingRequests: pendingRequests,
      blockedUsers: blockedUsers,
      friendGroups: friendGroups,
    );
  }

  Future<void> sendFriendRequest(String fromUserId, String toUserId) async {
    final targetControl = await getFriendControl(toUserId);
    
    if (!targetControl.allowFriendRequests) {
      throw Exception('User is not accepting friend requests');
    }
    
    if (targetControl.blockedUsers.contains(fromUserId)) {
      throw Exception('You cannot send a friend request to this user');
    }
    
    await _repository.addPendingRequest(toUserId, fromUserId);
  }

  // Block Management
  Future<BlockSettings> getBlockSettings(String userId) async {
    return _repository.getBlockSettings(userId);
  }

  Future<void> blockUser(
    String userId,
    String blockedUserId,
    String reason,
  ) async {
    await _repository.blockUser(userId, blockedUserId, reason);
    
    // Update related settings
    await updateFriendControl(
      userId: userId,
      allowFriendRequests: true,
      blockedUsers: [blockedUserId],
    );
    
    await updateLocationPrivacy(
      userId: userId,
      shareLocation: true,
      precision: 'city',
      blockedUsers: [blockedUserId],
    );
  }

  Future<void> unblockUser(String userId, String blockedUserId) async {
    await _repository.unblockUser(userId, blockedUserId);
    
    // Update related settings
    final friendControl = await getFriendControl(userId);
    final updatedBlockedUsers = List<String>.from(friendControl.blockedUsers)
      ..remove(blockedUserId);
    
    await updateFriendControl(
      userId: userId,
      allowFriendRequests: true,
      blockedUsers: updatedBlockedUsers,
    );
  }

  Future<bool> isUserBlocked(String userId, String targetUserId) async {
    final blockSettings = await getBlockSettings(userId);
    return blockSettings.blockedUsers.contains(targetUserId) ||
           blockSettings.blockedByUsers.contains(targetUserId);
  }
}
