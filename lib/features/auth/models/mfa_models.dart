import 'package:equatable/equatable.dart';

enum MFAMethod {
  authenticator,
  sms,
  email,
  biometric,
}

class MFAEnrollmentStatus extends Equatable {
  final bool isEnrolled;
  final List<String> methods;

  const MFAEnrollmentStatus({
    required this.isEnrolled,
    required this.methods,
  });

  @override
  List<Object?> get props => [isEnrolled, methods];

  Map<String, dynamic> toJson() {
    return {
      'isEnrolled': isEnrolled,
      'methods': methods,
    };
  }

  factory MFAEnrollmentStatus.fromJson(Map<String, dynamic> json) {
    return MFAEnrollmentStatus(
      isEnrolled: json['isEnrolled'] as bool,
      methods: List<String>.from(json['methods'] as List),
    );
  }
}

class MFASetupData extends Equatable {
  final String secret;
  final String qrCode;
  final List<String> backupCodes;

  const MFASetupData({
    required this.secret,
    required this.qrCode,
    required this.backupCodes,
  });

  @override
  List<Object?> get props => [secret, qrCode, backupCodes];

  Map<String, dynamic> toJson() {
    return {
      'secret': secret,
      'qrCode': qrCode,
      'backupCodes': backupCodes,
    };
  }

  factory MFASetupData.fromJson(Map<String, dynamic> json) {
    return MFASetupData(
      secret: json['secret'] as String,
      qrCode: json['qrCode'] as String,
      backupCodes: List<String>.from(json['backupCodes'] as List),
    );
  }
}

class MFAVerificationResult extends Equatable {
  final bool isValid;
  final String? error;
  final Map<String, dynamic>? additionalData;

  const MFAVerificationResult({
    required this.isValid,
    this.error,
    this.additionalData,
  });

  @override
  List<Object?> get props => [isValid, error, additionalData];

  Map<String, dynamic> toJson() {
    return {
      'isValid': isValid,
      'error': error,
      'additionalData': additionalData,
    };
  }

  factory MFAVerificationResult.fromJson(Map<String, dynamic> json) {
    return MFAVerificationResult(
      isValid: json['isValid'] as bool,
      error: json['error'] as String?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );
  }
}

class MFAChallenge extends Equatable {
  final String challengeId;
  final MFAMethod method;
  final DateTime expiry;
  final Map<String, dynamic>? metadata;

  const MFAChallenge({
    required this.challengeId,
    required this.method,
    required this.expiry,
    this.metadata,
  });

  @override
  List<Object?> get props => [challengeId, method, expiry, metadata];

  Map<String, dynamic> toJson() {
    return {
      'challengeId': challengeId,
      'method': method.toString(),
      'expiry': expiry.toIso8601String(),
      'metadata': metadata,
    };
  }

  factory MFAChallenge.fromJson(Map<String, dynamic> json) {
    return MFAChallenge(
      challengeId: json['challengeId'] as String,
      method: MFAMethod.values.firstWhere(
        (e) => e.toString() == json['method'],
      ),
      expiry: DateTime.parse(json['expiry'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );
  }

  bool get isExpired => DateTime.now().isAfter(expiry);
}
