import 'package:flutter/material.dart';
import 'package:shared_preferences.dart';
import '../error/app_error.dart';

class LocalizationService extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  final SharedPreferences _prefs;

  LocalizationService(this._prefs);

  static final Map<String, String> supportedLanguages = {
    'en': 'English',
    'es': 'Español',
    'fr': 'Français',
    'de': 'Deutsch',
    'it': 'Italiano',
    'pt': 'Português',
    'ru': 'Русский',
    'zh': '中文',
    'ja': '日本語',
    'ko': '한국어',
  };

  Locale get currentLocale {
    final savedLanguage = _prefs.getString(_languageKey);
    return _localeFromString(savedLanguage ?? 'en');
  }

  Future<void> setLocale(String languageCode) async {
    try {
      if (!supportedLanguages.containsKey(languageCode)) {
        throw AppError(
          code: 'unsupported-language',
          message: 'Language $languageCode is not supported',
          context: {'languageCode': languageCode},
        );
      }

      await _prefs.setString(_languageKey, languageCode);
      notifyListeners();
    } catch (e) {
      throw AppError(
        code: 'set-locale-failed',
        message: 'Failed to set locale: ${e.toString()}',
        context: {'languageCode': languageCode},
      );
    }
  }

  Locale _localeFromString(String code) {
    final parts = code.split('_');
    return parts.length > 1
        ? Locale(parts[0], parts[1])
        : Locale(parts[0]);
  }

  bool isSupported(Locale locale) {
    return supportedLanguages.containsKey(locale.languageCode);
  }

  String getLanguageName(String languageCode) {
    return supportedLanguages[languageCode] ?? 'Unknown';
  }

  List<Locale> get supportedLocales {
    return supportedLanguages.keys
        .map((code) => _localeFromString(code))
        .toList();
  }

  Future<void> useDeviceLocale() async {
    try {
      final deviceLocale = WidgetsBinding.instance.window.locale;
      if (isSupported(deviceLocale)) {
        await setLocale(deviceLocale.languageCode);
      }
    } catch (e) {
      throw AppError(
        code: 'device-locale-failed',
        message: 'Failed to use device locale: ${e.toString()}',
      );
    }
  }

  String? get currentLanguageCode => currentLocale.languageCode;

  String get currentLanguageName {
    return getLanguageName(currentLanguageCode ?? 'en');
  }

  bool get isRTL {
    final rtlLanguages = {'ar', 'fa', 'he', 'ur'};
    return rtlLanguages.contains(currentLanguageCode);
  }

  TextDirection get textDirection {
    return isRTL ? TextDirection.rtl : TextDirection.ltr;
  }

  Future<void> clearLanguagePreference() async {
    try {
      await _prefs.remove(_languageKey);
      notifyListeners();
    } catch (e) {
      throw AppError(
        code: 'clear-language-failed',
        message: 'Failed to clear language preference: ${e.toString()}',
      );
    }
  }
}
