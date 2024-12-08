import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_preferences.dart';

class NotificationSettingsScreen extends ConsumerWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(notificationPreferencesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
      ),
      body: preferences.when(
        data: (prefs) => _buildSettings(context, ref, prefs),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget _buildSettings(
    BuildContext context,
    WidgetRef ref,
    NotificationPreferences prefs,
  ) {
    return ListView(
      children: [
        _buildSection(
          context,
          title: 'Tournament Updates',
          children: [
            SwitchListTile(
              title: const Text('Tournament Start'),
              subtitle: const Text('Get notified when tournaments begin'),
              value: prefs.tournamentStart,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(tournamentStart: value)),
            ),
            SwitchListTile(
              title: const Text('Tournament End'),
              subtitle: const Text('Get notified when tournaments finish'),
              value: prefs.tournamentEnd,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(tournamentEnd: value)),
            ),
          ],
        ),
        _buildSection(
          context,
          title: 'Activity Notifications',
          children: [
            SwitchListTile(
              title: const Text('New Catches'),
              subtitle: const Text('Get notified of new catch submissions'),
              value: prefs.newCatch,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(newCatch: value)),
            ),
            SwitchListTile(
              title: const Text('Leaderboard Updates'),
              subtitle: const Text('Get notified of ranking changes'),
              value: prefs.leaderboardUpdates,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(leaderboardUpdates: value)),
            ),
            SwitchListTile(
              title: const Text('Prize Awards'),
              subtitle: const Text('Get notified when you win prizes'),
              value: prefs.prizeAwards,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(prizeAwards: value)),
            ),
          ],
        ),
        _buildSection(
          context,
          title: 'Reminders',
          children: [
            SwitchListTile(
              title: const Text('Tournament Reminders'),
              subtitle: const Text('Get reminded before tournaments start'),
              value: prefs.reminders,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(reminders: value)),
            ),
            ListTile(
              title: const Text('Reminder Time'),
              subtitle: Text('${prefs.tournamentStartReminder.inMinutes} minutes before'),
              enabled: prefs.reminders,
              onTap: () => _showReminderTimePicker(context, ref, prefs),
            ),
          ],
        ),
        _buildSection(
          context,
          title: 'Digests & Reports',
          children: [
            SwitchListTile(
              title: const Text('Daily Digest'),
              subtitle: const Text('Get a daily summary of tournament activity'),
              value: prefs.dailyDigest,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(dailyDigest: value)),
            ),
            ListTile(
              title: const Text('Daily Digest Time'),
              subtitle: Text(
                '${prefs.dailyDigestTime.format(context)}',
              ),
              enabled: prefs.dailyDigest,
              onTap: () => _showDailyDigestTimePicker(context, ref, prefs),
            ),
            SwitchListTile(
              title: const Text('Weekly Report'),
              subtitle: const Text('Get a weekly performance report'),
              value: prefs.weeklyReport,
              onChanged: (value) => _updatePreferences(ref, 
                prefs.copyWith(weeklyReport: value)),
            ),
            ListTile(
              title: const Text('Weekly Report Day'),
              subtitle: Text(_weekdayName(prefs.weeklyReportDay)),
              enabled: prefs.weeklyReport,
              onTap: () => _showWeeklyReportDayPicker(context, ref, prefs),
            ),
            ListTile(
              title: const Text('Weekly Report Time'),
              subtitle: Text(
                '${prefs.weeklyReportTime.format(context)}',
              ),
              enabled: prefs.weeklyReport,
              onTap: () => _showWeeklyReportTimePicker(context, ref, prefs),
            ),
          ],
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
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...children,
        const Divider(),
      ],
    );
  }

  Future<void> _showReminderTimePicker(
    BuildContext context,
    WidgetRef ref,
    NotificationPreferences prefs,
  ) async {
    final items = [15, 30, 60, 120, 240];
    final selected = await showDialog<int>(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Reminder Time'),
        children: items.map((minutes) {
          return SimpleDialogOption(
            onPressed: () => Navigator.pop(context, minutes),
            child: Text('$minutes minutes before'),
          );
        }).toList(),
      ),
    );

    if (selected != null) {
      _updatePreferences(
        ref,
        prefs.copyWith(
          tournamentStartReminder: Duration(minutes: selected),
        ),
      );
    }
  }

  Future<void> _showDailyDigestTimePicker(
    BuildContext context,
    WidgetRef ref,
    NotificationPreferences prefs,
  ) async {
    final time = await showTimePicker(
      context: context,
      initialTime: prefs.dailyDigestTime,
    );

    if (time != null) {
      _updatePreferences(ref, prefs.copyWith(dailyDigestTime: time));
    }
  }

  Future<void> _showWeeklyReportDayPicker(
    BuildContext context,
    WidgetRef ref,
    NotificationPreferences prefs,
  ) async {
    final selected = await showDialog<int>(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Weekly Report Day'),
        children: List.generate(7, (index) {
          return SimpleDialogOption(
            onPressed: () => Navigator.pop(context, index + 1),
            child: Text(_weekdayName(index + 1)),
          );
        }),
      ),
    );

    if (selected != null) {
      _updatePreferences(ref, prefs.copyWith(weeklyReportDay: selected));
    }
  }

  Future<void> _showWeeklyReportTimePicker(
    BuildContext context,
    WidgetRef ref,
    NotificationPreferences prefs,
  ) async {
    final time = await showTimePicker(
      context: context,
      initialTime: prefs.weeklyReportTime,
    );

    if (time != null) {
      _updatePreferences(ref, prefs.copyWith(weeklyReportTime: time));
    }
  }

  String _weekdayName(int day) {
    switch (day) {
      case 1: return 'Monday';
      case 2: return 'Tuesday';
      case 3: return 'Wednesday';
      case 4: return 'Thursday';
      case 5: return 'Friday';
      case 6: return 'Saturday';
      case 7: return 'Sunday';
      default: return '';
    }
  }

  void _updatePreferences(WidgetRef ref, NotificationPreferences prefs) {
    ref.read(notificationPreferencesProvider.notifier).update(prefs);
  }
}
