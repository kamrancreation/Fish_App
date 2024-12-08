import 'package:flutter/material.dart';
import '../../../../core/presentation/widgets/loading_state.dart';
import '../../../../core/presentation/widgets/error_state.dart';
import '../../../../core/presentation/responsive/responsive_layout.dart';
import '../../../../core/l10n/app_localizations.dart';
import '../widgets/spot_list.dart';
import '../bloc/spot_list_bloc.dart';
import 'package:provider/provider.dart';

class SpotListPage extends StatefulWidget {
  const SpotListPage({super.key});

  @override
  State<SpotListPage> createState() => _SpotListPageState();
}

class _SpotListPageState extends State<SpotListPage> {
  late final SpotListBloc _spotListBloc;

  @override
  void initState() {
    super.initState();
    _spotListBloc = context.read<SpotListBloc>();
    _spotListBloc.loadSpots();
  }

  Future<void> _onRefresh() async {
    await _spotListBloc.refreshSpots();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.fishingSpots,
          semanticsLabel: l10n.fishingSpots,
        ),
      ),
      body: ResponsiveLayout(
        mobile: _buildMobileLayout(context),
        tablet: _buildTabletLayout(context),
        desktop: _buildDesktopLayout(context),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return _buildSpotList();
  }

  Widget _buildTabletLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _buildSpotList(),
        ),
        const Expanded(
          flex: 3,
          child: SpotMapView(),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _buildSpotList(),
        ),
        const Expanded(
          flex: 4,
          child: SpotMapView(),
        ),
      ],
    );
  }

  Widget _buildSpotList() {
    return StreamBuilder<SpotListState>(
      stream: _spotListBloc.state,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorState(
            message: AppLocalizations.of(context).errorLoadingSpots,
            onRetry: _spotListBloc.loadSpots,
          );
        }

        if (!snapshot.hasData || snapshot.data!.isLoading) {
          return const LoadingState();
        }

        final spots = snapshot.data!.spots;
        if (spots.isEmpty) {
          return Center(
            child: Text(
              AppLocalizations.of(context).noSpotsFound,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: _onRefresh,
          child: ResponsiveGridView(
            children: spots.map((spot) => SpotCard(spot: spot)).toList(),
          ),
        );
      },
    );
  }
}
