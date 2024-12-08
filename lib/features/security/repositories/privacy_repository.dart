import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/privacy_models.dart';

class PrivacyRepository {
  final _locationPrivacyCollection = FirebaseFirestore.instance.collection('location_privacy');
  final _dataSharingCollection = FirebaseFirestore.instance.collection('data_sharing');
  final _profileVisibilityCollection = FirebaseFirestore.instance.collection('profile_visibility');
  final _contentAccessCollection = FirebaseFirestore.instance.collection('content_access');
  final _friendControlCollection = FirebaseFirestore.instance.collection('friend_control');
  final _blockSettingsCollection = FirebaseFirestore.instance.collection('block_settings');

  // Location Privacy
  Future<LocationPrivacy> getLocationPrivacy(String userId) async {
    final doc = await _locationPrivacyCollection.doc(userId).get();
    if (!doc.exists) {
      return LocationPrivacy(
        userId: userId,
        shareLocation: false,
        precision: 'city',
        allowedUsers: [],
        blockedUsers: [],
        featureSettings: {},
        metadata: {},
      );
    }
    return LocationPrivacy.fromJson(doc.data()!);
  }

  Future<void> updateLocationPrivacy({
    required String userId,
    required bool shareLocation,
    required String precision,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
    Map<String, bool>? featureSettings,
  }) async {
    final updates = <String, dynamic>{
      'shareLocation': shareLocation,
      'precision': precision,
    };

    if (allowedUsers != null) updates['allowedUsers'] = allowedUsers;
    if (blockedUsers != null) updates['blockedUsers'] = blockedUsers;
    if (featureSettings != null) updates['featureSettings'] = featureSettings;

    await _locationPrivacyCollection.doc(userId).set(
      updates,
      SetOptions(merge: true),
    );
  }

  // Data Sharing
  Future<DataSharingSettings> getDataSharingSettings(String userId) async {
    final doc = await _dataSharingCollection.doc(userId).get();
    if (!doc.exists) {
      return DataSharingSettings(
        userId: userId,
        dataTypes: {},
        allowedUsers: {},
        thirdPartySharing: {},
        lastUpdated: DateTime.now(),
        preferences: {},
      );
    }
    return DataSharingSettings.fromJson(doc.data()!);
  }

  Future<void> updateDataSharingSettings({
    required String userId,
    required Map<String, String> dataTypes,
    required Map<String, List<String>> allowedUsers,
    required Map<String, bool> thirdPartySharing,
  }) async {
    await _dataSharingCollection.doc(userId).set({
      'dataTypes': dataTypes,
      'allowedUsers': allowedUsers,
      'thirdPartySharing': thirdPartySharing,
      'lastUpdated': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  // Profile Visibility
  Future<ProfileVisibility> getProfileVisibility(String userId) async {
    final doc = await _profileVisibilityCollection.doc(userId).get();
    if (!doc.exists) {
      return ProfileVisibility(
        userId: userId,
        defaultVisibility: 'public',
        fieldVisibility: {},
        allowedUsers: [],
        blockedUsers: [],
        settings: {},
      );
    }
    return ProfileVisibility.fromJson(doc.data()!);
  }

  Future<void> updateProfileVisibility({
    required String userId,
    required String defaultVisibility,
    required Map<String, String> fieldVisibility,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
  }) async {
    final updates = <String, dynamic>{
      'defaultVisibility': defaultVisibility,
      'fieldVisibility': fieldVisibility,
    };

    if (allowedUsers != null) updates['allowedUsers'] = allowedUsers;
    if (blockedUsers != null) updates['blockedUsers'] = blockedUsers;

    await _profileVisibilityCollection.doc(userId).set(
      updates,
      SetOptions(merge: true),
    );
  }

  // Content Access
  Future<ContentAccess> getContentAccess(String contentId) async {
    final doc = await _contentAccessCollection.doc(contentId).get();
    return ContentAccess.fromJson(doc.data()!);
  }

  Future<void> updateContentAccess({
    required String contentId,
    required String visibility,
    List<String>? allowedUsers,
    List<String>? blockedUsers,
    Map<String, dynamic>? permissions,
  }) async {
    final updates = <String, dynamic>{'visibility': visibility};

    if (allowedUsers != null) updates['allowedUsers'] = allowedUsers;
    if (blockedUsers != null) updates['blockedUsers'] = blockedUsers;
    if (permissions != null) updates['permissions'] = permissions;

    await _contentAccessCollection.doc(contentId).set(
      updates,
      SetOptions(merge: true),
    );
  }

  // Friend Control
  Future<FriendControl> getFriendControl(String userId) async {
    final doc = await _friendControlCollection.doc(userId).get();
    if (!doc.exists) {
      return FriendControl(
        userId: userId,
        allowFriendRequests: true,
        friendList: [],
        pendingRequests: [],
        blockedUsers: [],
        friendGroups: {},
        settings: {},
      );
    }
    return FriendControl.fromJson(doc.data()!);
  }

  Future<void> updateFriendControl({
    required String userId,
    required bool allowFriendRequests,
    List<String>? friendList,
    List<String>? pendingRequests,
    List<String>? blockedUsers,
    Map<String, String>? friendGroups,
  }) async {
    final updates = <String, dynamic>{
      'allowFriendRequests': allowFriendRequests,
    };

    if (friendList != null) updates['friendList'] = friendList;
    if (pendingRequests != null) updates['pendingRequests'] = pendingRequests;
    if (blockedUsers != null) updates['blockedUsers'] = blockedUsers;
    if (friendGroups != null) updates['friendGroups'] = friendGroups;

    await _friendControlCollection.doc(userId).set(
      updates,
      SetOptions(merge: true),
    );
  }

  Future<void> addPendingRequest(String userId, String fromUserId) async {
    await _friendControlCollection.doc(userId).update({
      'pendingRequests': FieldValue.arrayUnion([fromUserId]),
    });
  }

  // Block Settings
  Future<BlockSettings> getBlockSettings(String userId) async {
    final doc = await _blockSettingsCollection.doc(userId).get();
    if (!doc.exists) {
      return BlockSettings(
        userId: userId,
        blockedUsers: [],
        blockedByUsers: [],
        blockReasons: {},
        lastUpdated: DateTime.now(),
        settings: {},
      );
    }
    return BlockSettings.fromJson(doc.data()!);
  }

  Future<void> blockUser(
    String userId,
    String blockedUserId,
    String reason,
  ) async {
    final batch = FirebaseFirestore.instance.batch();

    // Update blocker's settings
    batch.update(_blockSettingsCollection.doc(userId), {
      'blockedUsers': FieldValue.arrayUnion([blockedUserId]),
      'blockReasons.$blockedUserId': reason,
      'lastUpdated': FieldValue.serverTimestamp(),
    });

    // Update blocked user's settings
    batch.update(_blockSettingsCollection.doc(blockedUserId), {
      'blockedByUsers': FieldValue.arrayUnion([userId]),
      'lastUpdated': FieldValue.serverTimestamp(),
    });

    await batch.commit();
  }

  Future<void> unblockUser(String userId, String blockedUserId) async {
    final batch = FirebaseFirestore.instance.batch();

    // Update blocker's settings
    batch.update(_blockSettingsCollection.doc(userId), {
      'blockedUsers': FieldValue.arrayRemove([blockedUserId]),
      'blockReasons.$blockedUserId': FieldValue.delete(),
      'lastUpdated': FieldValue.serverTimestamp(),
    });

    // Update blocked user's settings
    batch.update(_blockSettingsCollection.doc(blockedUserId), {
      'blockedByUsers': FieldValue.arrayRemove([userId]),
      'lastUpdated': FieldValue.serverTimestamp(),
    });

    await batch.commit();
  }
}
