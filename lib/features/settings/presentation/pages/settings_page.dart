import 'package:flutter/material.dart';
import '../../../../core/theme/theme_manager.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../../../../core/presentation/responsive/responsive_layout.dart';
import '../widgets/language_selector.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final themeManager = context.watch<ThemeManager>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.settings,
          semanticsLabel: l10n.settings,
        ),
      ),
      body: ResponsiveLayout(
        mobile: _buildMobileLayout(context, l10n, themeManager),
        tablet: _buildTabletLayout(context, l10n, themeManager),
        desktop: _buildDesktopLayout(context, l10n, themeManager),
      ),
    );
  }

  Widget _buildMobileLayout(
    BuildContext context,
    AppLocalizations l10n,
    ThemeManager themeManager,
  ) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: l10n.appearance),
              Tab(text: l10n.accessibility),
              Tab(text: l10n.language),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildAppearanceSection(context, l10n, themeManager),
                _buildAccessibilitySection(context, l10n, themeManager),
                const LanguageSelector(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(
    BuildContext context,
    AppLocalizations l10n,
    ThemeManager themeManager,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 250,
          child: ListView(
            children: [
              _buildSection(
                context,
                title: l10n.appearance,
                children: [
                  _buildAppearanceSection(context, l10n, themeManager),
                ],
              ),
              _buildSection(
                context,
                title: l10n.accessibility,
                children: [
                  _buildAccessibilitySection(context, l10n, themeManager),
                ],
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: LanguageSelector(),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(
    BuildContext context,
    AppLocalizations l10n,
    ThemeManager themeManager,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: ListView(
            children: [
              _buildSection(
                context,
                title: l10n.appearance,
                children: [
                  _buildAppearanceSection(context, l10n, themeManager),
                ],
              ),
              _buildSection(
                context,
                title: l10n.accessibility,
                children: [
                  _buildAccessibilitySection(context, l10n, themeManager),
                ],
              ),
            ],
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: LanguageSelector(),
        ),
      ],
    );
  }

  Widget _buildAppearanceSection(
    BuildContext context,
    AppLocalizations l10n,
    ThemeManager themeManager,
  ) {
    return Column(
      children: [
        SwitchListTile(
          value: themeManager.isDarkMode,
          onChanged: (_) => themeManager.toggleTheme(),
          title: Text(l10n.darkMode),
          secondary: const Icon(Icons.dark_mode),
        ),
        SwitchListTile(
          value: themeManager.isHighContrast,
          onChanged: (_) => themeManager.toggleHighContrast(),
          title: Text(l10n.highContrast),
          secondary: const Icon(Icons.contrast),
        ),
      ],
    );
  }

  Widget _buildAccessibilitySection(
    BuildContext context,
    AppLocalizations l10n,
    ThemeManager themeManager,
  ) {
    return Column(
      children: [
        SwitchListTile(
          value: themeManager.reduceAnimations,
          onChanged: (_) => themeManager.toggleReduceAnimations(),
          title: Text(l10n.reduceAnimations),
          secondary: const Icon(Icons.animation),
        ),
        ListTile(
          title: Text(l10n.textSize),
          leading: const Icon(Icons.text_fields),
          trailing: SizedBox(
            width: 200,
            child: Slider(
              value: themeManager.textScaleFactor,
              min: 0.8,
              max: 1.4,
              divisions: 6,
              label: '${(themeManager.textScaleFactor * 100).round()}%',
              onChanged: themeManager.setTextScaleFactor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}
