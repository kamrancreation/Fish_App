import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/reported_content_list.dart';
import '../widgets/banned_users_list.dart';
import '../widgets/moderation_stats_card.dart';
import '../widgets/moderation_queue_card.dart';
import '../../controllers/moderation_controller.dart';
import '../../models/moderation_models.dart';
import '../../../shared/widgets/error_view.dart';
import '../../../shared/widgets/loading_view.dart';

class ModerationDashboardScreen extends ConsumerStatefulWidget {
  const ModerationDashboardScreen({super.key});

  @override
  ConsumerState<ModerationDashboardScreen> createState() =>
      _ModerationDashboardScreenState();
}

class _ModerationDashboardScreenState
    extends ConsumerState<ModerationDashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final moderationState = ref.watch(moderationControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Moderation Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(moderationControllerProvider.notifier).refreshDashboard();
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'settings':
                  Navigator.pushNamed(context, '/moderation-settings');
                  break;
                case 'export':
                  ref
                      .read(moderationControllerProvider.notifier)
                      .exportModerationData();
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'settings',
                child: Text('Moderation Settings'),
              ),
              const PopupMenuItem(
                value: 'export',
                child: Text('Export Data'),
              ),
            ],
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard),
                label: Text('Overview'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.report_problem),
                label: Text('Reports'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.block),
                label: Text('Banned Users'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.queue),
                label: Text('Queue'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: moderationState.isLoading
                ? const LoadingView()
                : moderationState.error != null
                    ? ErrorView(
                        error: moderationState.error!,
                        onRetry: () {
                          ref
                              .read(moderationControllerProvider.notifier)
                              .refreshDashboard();
                        },
                      )
                    : _buildSelectedView(moderationState),
          ),
        ],
      ),
      floatingActionButton: _selectedIndex == 1
          ? FloatingActionButton(
              onPressed: () {
                _showBulkActionDialog(context);
              },
              child: const Icon(Icons.done_all),
            )
          : null,
    );
  }

  Widget _buildSelectedView(ModerationState state) {
    switch (_selectedIndex) {
      case 0:
        return _buildOverview(state);
      case 1:
        return ReportedContentList(
          reports: state.reports,
          onActionTaken: (report, action, notes) {
            ref.read(moderationControllerProvider.notifier).handleReport(
                  reportId: report.id,
                  action: action,
                  notes: notes,
                );
          },
        );
      case 2:
        return BannedUsersList(
          bannedUsers: state.bannedUsers,
          onUnban: (userId) {
            ref.read(moderationControllerProvider.notifier).unbanUser(userId);
          },
        );
      case 3:
        return ListView.builder(
          itemCount: state.queues.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            return ModerationQueueCard(
              queue: state.queues[index],
              onProcess: () {
                ref
                    .read(moderationControllerProvider.notifier)
                    .processQueue(state.queues[index].id);
              },
            );
          },
        );
      default:
        return const Center(child: Text('Invalid selection'));
    }
  }

  Widget _buildOverview(ModerationState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Moderation Overview',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          ModerationStatsCard(stats: state.stats),
          const SizedBox(height: 24),
          Text(
            'Recent Activity',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          _buildRecentActivity(state.recentActions),
        ],
      ),
    );
  }

  Widget _buildRecentActivity(List<ModerationAction> actions) {
    return Card(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: actions.length,
        itemBuilder: (context, index) {
          final action = actions[index];
          return ListTile(
            leading: Icon(_getActionIcon(action.action)),
            title: Text(action.action),
            subtitle: Text(
              '${action.reason ?? 'No reason provided'} - ${_formatTimestamp(action.timestamp)}',
            ),
            trailing: Text(action.moderatorId),
          );
        },
      ),
    );
  }

  IconData _getActionIcon(String action) {
    switch (action.toLowerCase()) {
      case 'remove':
        return Icons.delete;
      case 'warn':
        return Icons.warning;
      case 'ban':
        return Icons.block;
      default:
        return Icons.info;
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  Future<void> _showBulkActionDialog(BuildContext context) async {
    final action = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Bulk Action'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Approve Selected'),
              onTap: () => Navigator.pop(context, 'approve'),
            ),
            ListTile(
              title: const Text('Reject Selected'),
              onTap: () => Navigator.pop(context, 'reject'),
            ),
          ],
        ),
      ),
    );

    if (action != null) {
      ref.read(moderationControllerProvider.notifier).bulkAction(action);
    }
  }
}
