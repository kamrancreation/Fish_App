import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../storage/storage_service.dart';
import 'app_theme.dart';

class ThemeManager extends ChangeNotifier {
  final StorageService _storage;
  bool _isDarkMode = false;
  double _textScaleFactor = 1.0;
  bool _isHighContrast = false;
  bool _reduceAnimations = false;

  ThemeManager({StorageService? storage})
      : _storage = storage ?? StorageService() {
    _loadThemePreferences();
  }

  bool get isDarkMode => _isDarkMode;
  double get textScaleFactor => _textScaleFactor;
  bool get isHighContrast => _isHighContrast;
  bool get reduceAnimations => _reduceAnimations;

  ThemeData get currentTheme => _isDarkMode
      ? _isHighContrast
          ? _enhanceThemeContrast(AppTheme.darkTheme)
          : AppTheme.darkTheme
      : _isHighContrast
          ? _enhanceThemeContrast(AppTheme.lightTheme)
          : AppTheme.lightTheme;

  Future<void> _loadThemePreferences() async {
    _isDarkMode = await _storage.getBool('isDarkMode') ?? false;
    _textScaleFactor = await _storage.getDouble('textScaleFactor') ?? 1.0;
    _isHighContrast = await _storage.getBool('isHighContrast') ?? false;
    _reduceAnimations = await _storage.getBool('reduceAnimations') ?? false;
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    await _storage.setBool('isDarkMode', _isDarkMode);

    // Update system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(
      _isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
    );

    notifyListeners();
  }

  Future<void> setTextScaleFactor(double scale) async {
    _textScaleFactor = scale.clamp(0.8, 1.4);
    await _storage.setDouble('textScaleFactor', _textScaleFactor);
    notifyListeners();
  }

  Future<void> toggleHighContrast() async {
    _isHighContrast = !_isHighContrast;
    await _storage.setBool('isHighContrast', _isHighContrast);
    notifyListeners();
  }

  Future<void> toggleReduceAnimations() async {
    _reduceAnimations = !_reduceAnimations;
    await _storage.setBool('reduceAnimations', _reduceAnimations);
    notifyListeners();
  }

  ThemeData _enhanceThemeContrast(ThemeData baseTheme) {
    final colorScheme = baseTheme.colorScheme;

    return baseTheme.copyWith(
      colorScheme: colorScheme.copyWith(
        // Increase contrast for text and background colors
        surface: _isDarkMode ? Colors.black : Colors.white,
        onSurface: _isDarkMode ? Colors.white : Colors.black,
        // Enhance primary and secondary colors for better visibility
        primary: _isDarkMode
            ? colorScheme.primary.saturate(0.2)
            : colorScheme.primary.saturate(0.1),
        secondary: _isDarkMode
            ? colorScheme.secondary.saturate(0.2)
            : colorScheme.secondary.saturate(0.1),
      ),
      textTheme: baseTheme.textTheme.apply(
        bodyColor: _isDarkMode ? Colors.white : Colors.black,
        displayColor: _isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}

extension ColorExtension on Color {
  Color saturate(double amount) {
    final hsl = HSLColor.fromColor(this);
    return hsl
        .withSaturation((hsl.saturation + amount).clamp(0.0, 1.0))
        .toColor();
  }
}
