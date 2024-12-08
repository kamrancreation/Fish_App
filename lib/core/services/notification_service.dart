import 'package:twilio_flutter/twilio_flutter.dart';
import '../config/app_config.dart';

class NotificationService {
  late TwilioFlutter _twilio;
  
  NotificationService() {
    _twilio = TwilioFlutter(
      accountSid: AppConfig.twilioAccountSid,
      authToken: AppConfig.twilioAuthToken,
      twilioNumber: AppConfig.twilioPhoneNumber,
    );
  }

  Future<void> sendEmergencyAlert({
    required String userId,
    required List<String> contacts,
    required String message,
    Map<String, dynamic>? location,
  }) async {
    String alertMessage = message;
    
    if (location != null) {
      final lat = location['latitude'];
      final lng = location['longitude'];
      alertMessage += '\nLocation: https://maps.google.com/?q=$lat,$lng';
    }

    final List<Future<void>> notifications = [];
    
    for (final contact in contacts) {
      if (_isPhoneNumber(contact)) {
        notifications.add(_sendSMS(contact, alertMessage));
      } else {
        notifications.add(_sendEmail(contact, alertMessage));
      }
    }

    await Future.wait(notifications);
  }

  Future<void> sendCheckInReminder({
    required String userId,
    required List<String> contacts,
    required Duration overdue,
  }) async {
    final message = 'Safety Alert: User has not checked in for ${_formatDuration(overdue)}. Please attempt to make contact.';
    
    final List<Future<void>> notifications = [];
    for (final contact in contacts) {
      if (_isPhoneNumber(contact)) {
        notifications.add(_sendSMS(contact, message));
      } else {
        notifications.add(_sendEmail(contact, message));
      }
    }

    await Future.wait(notifications);
  }

  Future<void> _sendSMS(String phoneNumber, String message) async {
    try {
      await _twilio.sendSMS(
        toNumber: phoneNumber,
        messageBody: message,
      );
    } catch (e) {
      throw Exception('Failed to send SMS: ${e.toString()}');
    }
  }

  Future<void> _sendEmail(String email, String message) async {
    // TODO: Implement email sending using your preferred email service
    // This could be implemented using SendGrid, Amazon SES, or other email services
    throw UnimplementedError('Email notifications not yet implemented');
  }

  bool _isPhoneNumber(String contact) {
    // Basic phone number validation
    final phoneRegex = RegExp(r'^\+?[\d\s-]+$');
    return phoneRegex.hasMatch(contact);
  }

  String _formatDuration(Duration duration) {
    if (duration.inHours > 0) {
      return '${duration.inHours}h ${duration.inMinutes.remainder(60)}m';
    }
    return '${duration.inMinutes}m';
  }
}
