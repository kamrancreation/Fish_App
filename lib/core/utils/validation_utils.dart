import '../config/config.dart';

class ValidationUtils {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!Config.emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < Config.minPasswordLength) {
      return 'Password must be at least ${Config.minPasswordLength} characters';
    }
    if (value.length > Config.maxPasswordLength) {
      return 'Password must be less than ${Config.maxPasswordLength} characters';
    }
    if (!Config.passwordRegex.hasMatch(value)) {
      return 'Password must contain at least one letter and one number';
    }
    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }
    if (value.length < Config.minUsernameLength) {
      return 'Username must be at least ${Config.minUsernameLength} characters';
    }
    if (value.length > Config.maxUsernameLength) {
      return 'Username must be less than ${Config.maxUsernameLength} characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) return null; // Phone is optional

    final phoneRegex = RegExp(r'^\+?[\d\s-]+$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateLength(
      String? value, String fieldName, int minLength, int maxLength) {
    if (value == null || value.isEmpty) return null;

    if (value.length < minLength) {
      return '$fieldName must be at least $minLength characters';
    }
    if (value.length > maxLength) {
      return '$fieldName must be less than $maxLength characters';
    }
    return null;
  }

  static String? validateImageSize(int sizeInBytes) {
    if (sizeInBytes > Config.maxImageSize) {
      const maxSizeMB = Config.maxImageSize / (1024 * 1024);
      return 'Image size must be less than ${maxSizeMB}MB';
    }
    return null;
  }

  static String? validateImageFormat(String format) {
    if (!Config.supportedImageFormats.contains(format.toLowerCase())) {
      return 'Unsupported image format. Please use: ${Config.supportedImageFormats.join(', ')}';
    }
    return null;
  }

  static String? validateEmergencyContacts(List<String> contacts) {
    if (contacts.isEmpty) {
      return 'At least one emergency contact is required';
    }
    if (contacts.length > Config.maxEmergencyContacts) {
      return 'Maximum ${Config.maxEmergencyContacts} emergency contacts allowed';
    }
    return null;
  }

  static String? validateCheckInInterval(int minutes) {
    if (minutes < 15) {
      return 'Check-in interval must be at least 15 minutes';
    }
    if (minutes > 240) {
      return 'Check-in interval must be less than 4 hours';
    }
    return null;
  }
}
