import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../error/app_error.dart';

part 'cache_service.g.dart';

class CacheService {
  final SharedPreferences _prefs;
  static const String _keyPrefix = 'fishpro_';
  static const Duration _defaultExpiry = Duration(days: 1);

  CacheService(this._prefs);

  Future<T?> get<T>(String key) async {
    try {
      final fullKey = _getFullKey(key);
      final jsonString = _prefs.getString(fullKey);
      
      if (jsonString == null) return null;

      final cacheData = json.decode(jsonString) as Map<String, dynamic>;
      
      // Check expiry
      final expiryTime = DateTime.parse(cacheData['expiry'] as String);
      if (DateTime.now().isAfter(expiryTime)) {
        await remove(key);
        return null;
      }

      final value = cacheData['value'];
      return _deserialize<T>(value);
    } catch (e) {
      // If there's an error reading the cache, remove the corrupted data
      await remove(key);
      return null;
    }
  }

  Future<void> set<T>(
    String key,
    T value, {
    Duration expiry = _defaultExpiry,
  }) async {
    try {
      final fullKey = _getFullKey(key);
      final expiryTime = DateTime.now().add(expiry);
      
      final cacheData = {
        'value': value,
        'expiry': expiryTime.toIso8601String(),
        'type': T.toString(),
      };

      await _prefs.setString(fullKey, json.encode(cacheData));
    } catch (e) {
      throw AppError(
        code: 'cache-set-failed',
        message: 'Failed to set cache value',
        context: {'key': key, 'error': e.toString()},
      );
    }
  }

  Future<void> remove(String key) async {
    try {
      final fullKey = _getFullKey(key);
      await _prefs.remove(fullKey);
    } catch (e) {
      throw AppError(
        code: 'cache-remove-failed',
        message: 'Failed to remove cache value',
        context: {'key': key, 'error': e.toString()},
      );
    }
  }

  Future<void> clear() async {
    try {
      final keys = _prefs.getKeys().where((key) => key.startsWith(_keyPrefix));
      for (final key in keys) {
        await _prefs.remove(key);
      }
    } catch (e) {
      throw AppError(
        code: 'cache-clear-failed',
        message: 'Failed to clear cache',
        context: {'error': e.toString()},
      );
    }
  }

  Future<bool> has(String key) async {
    try {
      final fullKey = _getFullKey(key);
      return _prefs.containsKey(fullKey);
    } catch (e) {
      throw AppError(
        code: 'cache-check-failed',
        message: 'Failed to check cache key',
        context: {'key': key, 'error': e.toString()},
      );
    }
  }

  Future<void> setMultiple(Map<String, dynamic> entries, {Duration? expiry}) async {
    try {
      for (final entry in entries.entries) {
        await set(entry.key, entry.value, expiry: expiry ?? _defaultExpiry);
      }
    } catch (e) {
      throw AppError(
        code: 'cache-set-multiple-failed',
        message: 'Failed to set multiple cache values',
        context: {'error': e.toString()},
      );
    }
  }

  Future<Map<String, dynamic>> getMultiple(List<String> keys) async {
    final result = <String, dynamic>{};
    try {
      for (final key in keys) {
        final value = await get(key);
        if (value != null) {
          result[key] = value;
        }
      }
      return result;
    } catch (e) {
      throw AppError(
        code: 'cache-get-multiple-failed',
        message: 'Failed to get multiple cache values',
        context: {'keys': keys, 'error': e.toString()},
      );
    }
  }

  Future<void> removeMultiple(List<String> keys) async {
    try {
      for (final key in keys) {
        await remove(key);
      }
    } catch (e) {
      throw AppError(
        code: 'cache-remove-multiple-failed',
        message: 'Failed to remove multiple cache values',
        context: {'keys': keys, 'error': e.toString()},
      );
    }
  }

  String _getFullKey(String key) => '$_keyPrefix$key';

  T _deserialize<T>(dynamic value) {
    if (value is T) return value;
    
    switch (T) {
      case int:
        return (value as num).toInt() as T;
      case double:
        return (value as num).toDouble() as T;
      case bool:
        if (value is String) return (value.toLowerCase() == 'true') as T;
        return value as T;
      case String:
        return value.toString() as T;
      case List:
        if (value is List) return value as T;
        throw AppError(
          code: 'cache-deserialize-failed',
          message: 'Cannot deserialize value to List',
        );
      case Map:
        if (value is Map) return value as T;
        throw AppError(
          code: 'cache-deserialize-failed',
          message: 'Cannot deserialize value to Map',
        );
      default:
        throw AppError(
          code: 'cache-deserialize-failed',
          message: 'Unsupported type for deserialization',
          context: {'type': T.toString()},
        );
    }
  }
}

@riverpod
Future<CacheService> cacheService(CacheServiceRef ref) async {
  final prefs = await SharedPreferences.getInstance();
  return CacheService(prefs);
}
