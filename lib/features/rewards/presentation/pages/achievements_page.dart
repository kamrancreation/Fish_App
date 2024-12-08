import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/presentation/responsive/responsive_layout.dart';
import '../../../../core/presentation/widgets/loading_state.dart';
import '../../../../core/presentation/widgets/error_state.dart';
import '../../domain/models/achievement.dart';
import '../../domain/services/achievement_service.dart';
import '../widgets/achievement_card.dart';
import '../widgets/achievement_progress.dart';
import '../widgets/achievement_stats.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({super.key});

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late AchievementService _achievementService;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _achievementService = context.read<AchievementService>();
    _achievementService.initialize();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievements'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'In Progress'),
            Tab(text: 'Unlocked'),
            Tab(text: 'All'),
          ],
        ),
      ),
      body: ResponsiveLayout(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        const AchievementStats(),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildInProgressAchievements(),
              _buildUnlockedAchievements(),
              _buildAllAchievements(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabletLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const AchievementStats(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildInProgressAchievements(),
                    _buildUnlockedAchievements(),
                    _buildAllAchievements(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _buildAchievementProgress(),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const AchievementStats(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildInProgressAchievements(),
                    _buildUnlockedAchievements(),
                    _buildAllAchievements(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: _buildAchievementProgress(),
        ),
      ],
    );
  }

  Widget _buildInProgressAchievements() {
    return StreamBuilder<List<Achievement>>(
      stream: _achievementService.achievements,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingState(
            message: 'Loading achievements...',
          );
        }

        if (snapshot.hasError) {
          return ErrorState(
            message: 'Failed to load achievements',
            onRetry: () => _achievementService.initialize(),
          );
        }

        final achievements = snapshot.data!
            .where((a) => a.isInProgress)
            .toList()
          ..sort((a, b) => b.progress.compareTo(a.progress));

        if (achievements.isEmpty) {
          return Center(
            child: Text(
              'No achievements in progress',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return _buildAchievementGrid(achievements);
      },
    );
  }

  Widget _buildUnlockedAchievements() {
    return StreamBuilder<List<Achievement>>(
      stream: _achievementService.achievements,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();

        final achievements = snapshot.data!.where((a) => a.isUnlocked).toList()
          ..sort((a, b) => b.unlockedAt!.compareTo(a.unlockedAt!));

        if (achievements.isEmpty) {
          return Center(
            child: Text(
              'No achievements unlocked yet',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return _buildAchievementGrid(achievements);
      },
    );
  }

  Widget _buildAllAchievements() {
    return StreamBuilder<List<Achievement>>(
      stream: _achievementService.achievements,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();

        final achievements = snapshot.data!
          ..sort((a, b) {
            if (a.isUnlocked != b.isUnlocked) {
              return a.isUnlocked ? -1 : 1;
            }
            return a.category.index.compareTo(b.category.index);
          });

        return _buildAchievementGrid(achievements);
      },
    );
  }

  Widget _buildAchievementGrid(List<Achievement> achievements) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: ResponsiveLayout.of(context).when(
          mobile: () => 1,
          tablet: () => 2,
          desktop: () => 3,
        ),
        childAspectRatio: 1.5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: achievements.length,
      itemBuilder: (context, index) {
        return AchievementCard(
          achievement: achievements[index],
        );
      },
    );
  }

  Widget _buildAchievementProgress() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: StreamBuilder<Map<String, double>>(
        stream: _achievementService.progress,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();

          return AchievementProgress(
            progress: snapshot.data!,
          );
        },
      ),
    );
  }
}
