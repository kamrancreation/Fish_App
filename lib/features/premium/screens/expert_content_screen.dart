import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/content_service.dart';
import '../models/expert_content.dart';
import '../widgets/content_card.dart';
import '../widgets/workshop_card.dart';
import '../widgets/expert_qa_panel.dart';
import '../widgets/content_search.dart';

class ExpertContentScreen extends ConsumerStatefulWidget {
  const ExpertContentScreen({super.key});

  @override
  ConsumerState<ExpertContentScreen> createState() => _ExpertContentScreenState();
}

class _ExpertContentScreenState extends ConsumerState<ExpertContentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  ContentCategory? _selectedCategory;
  ExpertLevel? _selectedLevel;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expert Content'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Featured'),
            Tab(text: 'Pro Tips'),
            Tab(text: 'Tutorials'),
            Tab(text: 'Techniques'),
            Tab(text: 'Locations'),
            Tab(text: 'Gear Reviews'),
            Tab(text: 'Workshops'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ContentSearch(
              controller: _searchController,
              onSearch: _performSearch,
              onFilterChanged: _updateFilters,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildFeaturedContent(),
                _buildCategoryContent(ContentCategory.tip),
                _buildCategoryContent(ContentCategory.tutorial),
                _buildCategoryContent(ContentCategory.technique),
                _buildCategoryContent(ContentCategory.location),
                _buildCategoryContent(ContentCategory.gearReview),
                _buildWorkshopsTab(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showQAPanel,
        label: const Text('Ask an Expert'),
        icon: const Icon(Icons.question_answer),
      ),
    );
  }

  Widget _buildFeaturedContent() {
    return Consumer(
      builder: (context, ref, child) {
        final contentService = ref.watch(contentServiceProvider);
        return FutureBuilder<List<ExpertContent>>(
          future: contentService.getFeaturedContent(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            final content = snapshot.data ?? [];
            return _buildContentGrid(content);
          },
        );
      },
    );
  }

  Widget _buildCategoryContent(ContentCategory category) {
    return Consumer(
      builder: (context, ref, child) {
        final contentService = ref.watch(contentServiceProvider);
        return FutureBuilder<List<ExpertContent>>(
          future: contentService.getContentByCategory(category),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            final content = snapshot.data ?? [];
            return _buildContentGrid(content);
          },
        );
      },
    );
  }

  Widget _buildContentGrid(List<ExpertContent> content) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: content.length,
      itemBuilder: (context, index) {
        return ContentCard(
          content: content[index],
          onTap: () => _openContent(content[index]),
        );
      },
    );
  }

  Widget _buildWorkshopsTab() {
    return Consumer(
      builder: (context, ref, child) {
        final contentService = ref.watch(contentServiceProvider);
        return FutureBuilder(
          future: contentService.getUpcomingWorkshops(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            final workshops = snapshot.data ?? [];
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: workshops.length,
              itemBuilder: (context, index) {
                return WorkshopCard(
                  workshop: workshops[index],
                  onRegister: () => _registerForWorkshop(workshops[index].id),
                );
              },
            );
          },
        );
      },
    );
  }

  void _performSearch(String query) {
    // Implement search functionality
  }

  void _updateFilters({
    ContentCategory? category,
    ExpertLevel? level,
  }) {
    setState(() {
      _selectedCategory = category;
      _selectedLevel = level;
    });
  }

  void _openContent(ExpertContent content) {
    // Navigate to content detail screen
  }

  void _registerForWorkshop(String workshopId) async {
    try {
      final contentService = ref.read(contentServiceProvider);
      await contentService.registerForWorkshop(workshopId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Successfully registered for workshop!'),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error registering for workshop: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showQAPanel() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const ExpertQAPanel(),
    );
  }
}
