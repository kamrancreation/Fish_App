import 'package:permission_handler/permission_handler.dart';
import '../error/app_error.dart';

class PermissionService {
  Future<bool> requestCameraPermission() async {
    try {
      final status = await Permission.camera.request();
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-camera-failed',
        message: 'Failed to request camera permission: ${e.toString()}',
      );
    }
  }

  Future<bool> requestLocationPermission() async {
    try {
      final status = await Permission.locationWhenInUse.request();
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-location-failed',
        message: 'Failed to request location permission: ${e.toString()}',
      );
    }
  }

  Future<bool> requestStoragePermission() async {
    try {
      final status = await Permission.storage.request();
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-storage-failed',
        message: 'Failed to request storage permission: ${e.toString()}',
      );
    }
  }

  Future<bool> requestNotificationPermission() async {
    try {
      final status = await Permission.notification.request();
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-notification-failed',
        message: 'Failed to request notification permission: ${e.toString()}',
      );
    }
  }

  Future<bool> requestMicrophonePermission() async {
    try {
      final status = await Permission.microphone.request();
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-microphone-failed',
        message: 'Failed to request microphone permission: ${e.toString()}',
      );
    }
  }

  Future<Map<Permission, PermissionStatus>> requestMultiplePermissions(
    List<Permission> permissions,
  ) async {
    try {
      return await permissions.request();
    } catch (e) {
      throw AppError(
        code: 'permission-multiple-failed',
        message: 'Failed to request multiple permissions: ${e.toString()}',
        context: {'permissions': permissions.map((p) => p.toString()).toList()},
      );
    }
  }

  Future<bool> checkPermissionStatus(Permission permission) async {
    try {
      final status = await permission.status;
      return status.isGranted;
    } catch (e) {
      throw AppError(
        code: 'permission-check-failed',
        message: 'Failed to check permission status: ${e.toString()}',
        context: {'permission': permission.toString()},
      );
    }
  }

  Future<void> openAppSettings() async {
    try {
      await openAppSettings();
    } catch (e) {
      throw AppError(
        code: 'permission-settings-failed',
        message: 'Failed to open app settings: ${e.toString()}',
      );
    }
  }

  Future<bool> shouldShowRequestRationale(Permission permission) async {
    try {
      if (await permission.shouldShowRequestRationale) {
        return true;
      }
      final status = await permission.status;
      return status.isPermanentlyDenied;
    } catch (e) {
      throw AppError(
        code: 'permission-rationale-failed',
        message: 'Failed to check permission rationale: ${e.toString()}',
        context: {'permission': permission.toString()},
      );
    }
  }

  Future<void> handlePermanentlyDenied(Permission permission) async {
    try {
      final status = await permission.status;
      if (status.isPermanentlyDenied) {
        await openAppSettings();
      }
    } catch (e) {
      throw AppError(
        code: 'permission-handle-denied-failed',
        message: 'Failed to handle permanently denied permission: ${e.toString()}',
        context: {'permission': permission.toString()},
      );
    }
  }
}
