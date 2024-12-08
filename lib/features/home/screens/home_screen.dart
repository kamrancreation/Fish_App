import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/state/app_state.dart';
import '../../../core/widgets/common_widgets.dart';
import '../../measurement/screens/measurement_screen.dart';
import '../../species/screens/species_screen.dart';
import '../../tournament/screens/tournament_screen.dart';
import '../../weather/screens/weather_screen.dart';
import '../../profile/screens/profile_screen.dart';
import '../../forecast/presentation/forecast_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MeasurementScreen(),
    const SpeciesScreen(),
    const WeatherScreen(),
    const ForecastScreen(),
    const TournamentScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    // Initialize app state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = context.read<AppState>();
      final currentUser = appState.currentUser;
      if (currentUser != null) {
        appState.initializeApp(currentUser.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.straighten),
              label: 'Measure',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.set_meal),
              label: 'Species',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              label: 'Weather',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Forecast',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: 'Tournament',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButton: _currentIndex == 0
            ? FloatingActionButton(
                onPressed: () {
                  // TODO: Implement quick catch recording
                },
                child: const Icon(Icons.add_a_photo),
              )
            : null,
      ),
    );
  }
}
