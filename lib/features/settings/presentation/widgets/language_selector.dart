import 'package:flutter/material.dart';
import '../../../../core/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  String _searchQuery = '';
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  final Map<String, List<Locale>> _regionLocales = {
    'Americas': [
      const Locale('en', 'US'),
      const Locale('en', 'GB'),
      const Locale('es', 'ES'),
      const Locale('es', 'MX'),
      const Locale('pt', 'BR'),
      const Locale('fr', 'CA'),
    ],
    'Europe': [
      const Locale('fr', 'FR'),
      const Locale('de', 'DE'),
      const Locale('it', 'IT'),
      const Locale('nl', 'NL'),
      const Locale('pl', 'PL'),
      const Locale('ru', 'RU'),
      const Locale('uk', 'UA'),
      const Locale('tr', 'TR'),
      const Locale('el', 'GR'),
      const Locale('sv', 'SE'),
      const Locale('no', 'NO'),
      const Locale('da', 'DK'),
      const Locale('fi', 'FI'),
    ],
    'Asia': [
      const Locale('zh', 'CN'),
      const Locale('zh', 'TW'),
      const Locale('ja', 'JP'),
      const Locale('ko', 'KR'),
      const Locale('hi', 'IN'),
      const Locale('bn', 'IN'),
      const Locale('ur', 'PK'),
      const Locale('ar', 'SA'),
      const Locale('th', 'TH'),
      const Locale('vi', 'VN'),
      const Locale('id', 'ID'),
      const Locale('ms', 'MY'),
      const Locale('fa', 'IR'),
      const Locale('he', 'IL'),
    ],
    'Africa': [
      const Locale('sw', 'KE'),
      const Locale('am', 'ET'),
      const Locale('ha', 'NG'),
      const Locale('yo', 'NG'),
      const Locale('zu', 'ZA'),
      const Locale('af', 'ZA'),
    ],
    'Oceania': [
      const Locale('mi', 'NZ'),
    ],
  };

  @override
  Widget build(BuildContext context) {
    final localeManager = context.watch<LocaleManager>();
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: l10n.searchLanguages,
              prefixIcon: const Icon(Icons.search),
              border: const OutlineInputBorder(),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          _searchQuery = '';
                          _searchController.clear();
                        });
                      },
                    )
                  : null,
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value.toLowerCase();
              });
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _regionLocales.length,
            itemBuilder: (context, index) {
              final region = _regionLocales.keys.elementAt(index);
              final locales = _regionLocales[region]!;

              // Filter locales based on search query
              final filteredLocales = _searchQuery.isEmpty
                  ? locales
                  : locales.where((locale) {
                      final languageName =
                          _getLanguageName(locale).toLowerCase();
                      final nativeName =
                          _getNativeLanguageName(locale).toLowerCase();
                      return languageName.contains(_searchQuery) ||
                          nativeName.contains(_searchQuery);
                    }).toList();

              if (filteredLocales.isEmpty) return const SizedBox.shrink();

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      region,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  ...filteredLocales.map(
                    (locale) => RadioListTile<Locale>(
                      value: locale,
                      groupValue: localeManager.currentLocale,
                      onChanged: (value) {
                        if (value != null) {
                          localeManager.setLocale(value);
                        }
                      },
                      title: Text(_getLanguageName(locale)),
                      subtitle: Text(_getNativeLanguageName(locale)),
                      secondary: const Icon(Icons.language),
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  String _getLanguageName(Locale locale) {
    final Map<String, String> languageNames = {
      // Americas
      'en_US': 'English (US)',
      'en_GB': 'English (UK)',
      'es_ES': 'Spanish (Spain)',
      'es_MX': 'Spanish (Mexico)',
      'pt_BR': 'Portuguese (Brazil)',
      'fr_CA': 'French (Canada)',

      // Europe
      'fr_FR': 'French (France)',
      'de_DE': 'German',
      'it_IT': 'Italian',
      'nl_NL': 'Dutch',
      'pl_PL': 'Polish',
      'ru_RU': 'Russian',
      'uk_UA': 'Ukrainian',
      'tr_TR': 'Turkish',
      'el_GR': 'Greek',
      'sv_SE': 'Swedish',
      'no_NO': 'Norwegian',
      'da_DK': 'Danish',
      'fi_FI': 'Finnish',

      // Asia
      'zh_CN': 'Chinese (Simplified)',
      'zh_TW': 'Chinese (Traditional)',
      'ja_JP': 'Japanese',
      'ko_KR': 'Korean',
      'hi_IN': 'Hindi',
      'bn_IN': 'Bengali',
      'ur_PK': 'Urdu',
      'ar_SA': 'Arabic',
      'th_TH': 'Thai',
      'vi_VN': 'Vietnamese',
      'id_ID': 'Indonesian',
      'ms_MY': 'Malay',
      'fa_IR': 'Persian',
      'he_IL': 'Hebrew',

      // Africa
      'sw_KE': 'Swahili',
      'am_ET': 'Amharic',
      'ha_NG': 'Hausa',
      'yo_NG': 'Yoruba',
      'zu_ZA': 'Zulu',
      'af_ZA': 'Afrikaans',

      // Oceania
      'mi_NZ': 'Maori',
    };

    final key = '${locale.languageCode}_${locale.countryCode}';
    return languageNames[key] ?? locale.languageCode;
  }

  String _getNativeLanguageName(Locale locale) {
    final Map<String, String> nativeNames = {
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
    return nativeNames[key] ?? locale.languageCode;
  }
}
