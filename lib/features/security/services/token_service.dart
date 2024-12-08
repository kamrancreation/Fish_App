import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:crypto/crypto.dart';
import '../repositories/security_repository.dart';
import 'encryption_service.dart';

class TokenService {
  final SecurityRepository _securityRepository;
  final EncryptionService _encryptionService;

  TokenService({
    SecurityRepository? securityRepository,
    EncryptionService? encryptionService,
  })  : _securityRepository = securityRepository ?? SecurityRepository(),
        _encryptionService = encryptionService ?? EncryptionService();

  // Generate access token
  Future<SecurityToken> generateAccessToken({
    required String userId,
    required List<String> roles,
    required Map<String, dynamic> claims,
    Duration expiration = const Duration(hours: 1),
  }) async {
    final issuedAt = DateTime.now();
    final expiresAt = issuedAt.add(expiration);

    final tokenData = {
      'iss': 'fishpro_app',
      'sub': userId,
      'iat': issuedAt.millisecondsSinceEpoch ~/ 1000,
      'exp': expiresAt.millisecondsSinceEpoch ~/ 1000,
      'roles': roles,
      ...claims,
    };

    final encodedHeader = base64Url
        .encode(utf8.encode(json.encode({'alg': 'HS256', 'typ': 'JWT'})));

    final encodedPayload =
        base64Url.encode(utf8.encode(json.encode(tokenData)));
    final key = _encryptionService.generateSecureRandomString(32);

    final signature = _generateSignature('$encodedHeader.$encodedPayload', key);
    final token = '$encodedHeader.$encodedPayload.$signature';

    final securityToken = SecurityToken(
      token: token,
      type: 'Bearer',
      expiresAt: expiresAt,
      issuedAt: issuedAt,
      userId: userId,
      claims: claims,
    );

    await _securityRepository.storeToken(securityToken);
    return securityToken;
  }

  // Generate refresh token
  Future<SecurityToken> generateRefreshToken({
    required String userId,
    Duration expiration = const Duration(days: 30),
  }) async {
    final token = _encryptionService.generateSecureRandomString(32);
    final issuedAt = DateTime.now();
    final expiresAt = issuedAt.add(expiration);

    final refreshToken = SecurityToken(
      token: token,
      type: 'Refresh',
      expiresAt: expiresAt,
      issuedAt: issuedAt,
      userId: userId,
      claims: {'type': 'refresh'},
    );

    await _securityRepository.storeToken(refreshToken);
    return refreshToken;
  }

  // Validate token
  Future<bool> validateToken(String token) async {
    try {
      final storedToken = await _securityRepository.getToken(token);
      if (storedToken == null) return false;

      if (storedToken.expiresAt.isBefore(DateTime.now())) {
        await _securityRepository.revokeToken(token);
        return false;
      }

      if (storedToken.type == 'Bearer') {
        return _validateJwt(token);
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  // Validate JWT token
  bool _validateJwt(String token) {
    try {
      final decodedToken = JwtDecoder.decode(token);
      final expirationDate =
          DateTime.fromMillisecondsSinceEpoch(decodedToken['exp'] * 1000);
      return DateTime.now().isBefore(expirationDate);
    } catch (e) {
      return false;
    }
  }

  // Generate token signature
  String _generateSignature(String data, String key) {
    final bytes = utf8.encode(data);
    final hmac = Hmac(sha256, utf8.encode(key));
    final digest = hmac.convert(bytes);
    return base64Url.encode(digest.bytes);
  }

  // Refresh access token
  Future<SecurityToken?> refreshAccessToken(String refreshToken) async {
    final storedToken = await _securityRepository.getToken(refreshToken);
    if (storedToken == null || storedToken.type != 'Refresh') {
      return null;
    }

    if (storedToken.expiresAt.isBefore(DateTime.now())) {
      await _securityRepository.revokeToken(refreshToken);
      return null;
    }

    final user = await _securityRepository.getUserById(storedToken.userId);
    if (user == null) return null;

    return generateAccessToken(
      userId: user.id,
      roles: user.roles,
      claims: {'refreshed': true},
    );
  }

  // Revoke token
  Future<void> revokeToken(String token) async {
    await _securityRepository.revokeToken(token);
  }

  // Revoke all user tokens
  Future<void> revokeAllUserTokens(String userId) async {
    await _securityRepository.revokeAllUserTokens(userId);
  }

  // Get token info
  Future<Map<String, dynamic>?> getTokenInfo(String token) async {
    try {
      if (token.split('.').length == 3) {
        return JwtDecoder.decode(token);
      }

      final storedToken = await _securityRepository.getToken(token);
      if (storedToken == null) return null;

      return {
        'type': storedToken.type,
        'userId': storedToken.userId,
        'issuedAt': storedToken.issuedAt.toIso8601String(),
        'expiresAt': storedToken.expiresAt.toIso8601String(),
        'claims': storedToken.claims,
      };
    } catch (e) {
      return null;
    }
  }

  // Clean up expired tokens
  Future<void> cleanupExpiredTokens() async {
    await _securityRepository.cleanupExpiredTokens();
  }
}
