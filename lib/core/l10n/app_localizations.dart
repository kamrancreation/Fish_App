import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../services/storage_service.dart';

class AppLocalizations {
  final Locale locale;
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  const AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<Locale> supportedLocales = [
    // Americas
    Locale('en', 'US'), // English (United States)
    Locale('en', 'GB'), // English (United Kingdom)
    Locale('es', 'ES'), // Spanish (Spain)
    Locale('es', 'MX'), // Spanish (Mexico)
    Locale('pt', 'BR'), // Portuguese (Brazil)
    Locale('fr', 'CA'), // French (Canada)

    // Europe
    Locale('fr', 'FR'), // French (France)
    Locale('de', 'DE'), // German
    Locale('it', 'IT'), // Italian
    Locale('nl', 'NL'), // Dutch
    Locale('pl', 'PL'), // Polish
    Locale('ru', 'RU'), // Russian
    Locale('uk', 'UA'), // Ukrainian
    Locale('tr', 'TR'), // Turkish
    Locale('el', 'GR'), // Greek
    Locale('sv', 'SE'), // Swedish
    Locale('no', 'NO'), // Norwegian
    Locale('da', 'DK'), // Danish
    Locale('fi', 'FI'), // Finnish

    // Asia
    Locale('zh', 'CN'), // Chinese (Simplified)
    Locale('zh', 'TW'), // Chinese (Traditional)
    Locale('ja', 'JP'), // Japanese
    Locale('ko', 'KR'), // Korean
    Locale('hi', 'IN'), // Hindi
    Locale('bn', 'IN'), // Bengali
    Locale('ur', 'PK'), // Urdu
    Locale('ar', 'SA'), // Arabic
    Locale('th', 'TH'), // Thai
    Locale('vi', 'VN'), // Vietnamese
    Locale('id', 'ID'), // Indonesian
    Locale('ms', 'MY'), // Malay
    Locale('fa', 'IR'), // Persian
    Locale('he', 'IL'), // Hebrew

    // Africa
    Locale('sw', 'KE'), // Swahili
    Locale('am', 'ET'), // Amharic
    Locale('ha', 'NG'), // Hausa
    Locale('yo', 'NG'), // Yoruba
    Locale('zu', 'ZA'), // Zulu
    Locale('af', 'ZA'), // Afrikaans

    // Oceania
    Locale('mi', 'NZ'), // Maori
  ];

  String get appName => Intl.message(
        'FishPro',
        name: 'appName',
        desc: 'The application name',
        locale: locale.toString(),
      );

  String get loading => Intl.message(
        'Loading...',
        name: 'loading',
        desc: 'Loading message',
        locale: locale.toString(),
      );

  String get error => Intl.message(
        'Error',
        name: 'error',
        desc: 'Error message',
        locale: locale.toString(),
      );

  String get retry => Intl.message(
        'Retry',
        name: 'retry',
        desc: 'Retry button text',
        locale: locale.toString(),
      );

  String get settings => Intl.message(
        'Settings',
        name: 'settings',
        desc: 'Settings screen title',
        locale: locale.toString(),
      );

  String get darkMode => Intl.message(
        'Dark Mode',
        name: 'darkMode',
        desc: 'Dark mode setting',
        locale: locale.toString(),
      );

  String get highContrast => Intl.message(
        'High Contrast',
        name: 'highContrast',
        desc: 'High contrast setting',
        locale: locale.toString(),
      );

  String get reduceAnimations => Intl.message(
        'Reduce Animations',
        name: 'reduceAnimations',
        desc: 'Reduce animations setting',
        locale: locale.toString(),
      );

  String get textSize => Intl.message(
        'Text Size',
        name: 'textSize',
        desc: 'Text size setting',
        locale: locale.toString(),
      );

  String get language => Intl.message(
        'Language',
        name: 'language',
        desc: 'Language setting',
        locale: locale.toString(),
      );

  String _getLanguageName(Locale locale) {
    final Map<String, String> languageNames = {
      // Americas
      'en_US': 'English (US)',
      'en_GB': 'English (UK)',
      'es_ES': 'Español (España)',
      'es_MX': 'Español (México)',
      'pt_BR': 'Português (Brasil)',
      'fr_CA': 'Français (Canada)',

      // Europe
      'fr_FR': 'Français (France)',
      'de_DE': 'Deutsch',
      'it_IT': 'Italiano',
      'nl_NL': 'Nederlands',
      'pl_PL': 'Polski',
      'ru_RU': 'Русский',
      'uk_UA': 'Українська',
      'tr_TR': 'Türkçe',
      'el_GR': 'Ελληνικά',
      'sv_SE': 'Svenska',
      'no_NO': 'Norsk',
      'da_DK': 'Dansk',
      'fi_FI': 'Suomi',

      // Asia
      'zh_CN': '简体中文',
      'zh_TW': '繁體中文',
      'ja_JP': '日本語',
      'ko_KR': '한국어',
      'hi_IN': 'हिन्दी',
      'bn_IN': 'বাংলা',
      'ur_PK': 'اردو',
      'ar_SA': 'العربية',
      'th_TH': 'ไทย',
      'vi_VN': 'Tiếng Việt',
      'id_ID': 'Bahasa Indonesia',
      'ms_MY': 'Bahasa Melayu',
      'fa_IR': 'فارسی',
      'he_IL': 'עברית',

      // Africa
      'sw_KE': 'Kiswahili',
      'am_ET': 'አማርኛ',
      'ha_NG': 'Hausa',
      'yo_NG': 'Yorùbá',
      'zu_ZA': 'isiZulu',
      'af_ZA': 'Afrikaans',

      // Oceania
      'mi_NZ': 'Te Reo Māori',
    };

    final key = '${locale.languageCode}_${locale.countryCode}';
    return languageNames[key] ?? locale.languageCode;
  }

  // Add more translations as needed
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales
        .map((e) => e.languageCode)
        .contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

class LocaleManager extends ChangeNotifier {
  final StorageService _storageService;

  LocaleManager(this._storageService);

  Future<Locale?> getStoredLocale() async {
    final languageCode = await _storageService.getValue('languageCode');
    final countryCode = await _storageService.getValue('countryCode');
    
    if (languageCode == null) return null;
    
    return Locale(languageCode, countryCode);
  }

  Future<void> setLocale(Locale locale) async {
    await _storageService.setValue('languageCode', locale.languageCode);
    if (locale.countryCode != null) {
      await _storageService.setValue('countryCode', locale.countryCode!);
    }
  }
}
