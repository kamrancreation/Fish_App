import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import '../data/forecast_repository.dart';
import '../../../core/widgets/loading_indicator.dart';
import '../../../core/widgets/error_view.dart';
import 'package:geolocator/geolocator.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({super.key});

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  final ForecastRepository _forecastRepository = ForecastRepository();
  Map<String, dynamic>? _forecastData;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadForecast();
  }

  Future<void> _loadForecast() async {
    try {
      final position = await Geolocator.getCurrentPosition();
      final forecast = await _forecastRepository.getFishingForecast(
        position.latitude,
        position.longitude,
      );
      setState(() {
        _forecastData = forecast;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Failed to load forecast: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const LoadingIndicator();
    }

    if (_error != null) {
      return ErrorView(
        error: _error!,
        onRetry: _loadForecast,
      );
    }

    final weather = _forecastData!['weather'] as Weather;
    final fishingScore = _forecastData!['fishingScore'] as double;
    final bestTimeToFish = _forecastData!['bestTimeToFish'] as String;
    final recommendedBait = _forecastData!['recommendedBait'] as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fishing Forecast'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadForecast,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _loadForecast,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildScoreCard(fishingScore),
              const SizedBox(height: 16),
              _buildWeatherCard(weather),
              const SizedBox(height: 16),
              _buildInfoCard('Best Time to Fish', bestTimeToFish),
              const SizedBox(height: 16),
              _buildInfoCard('Recommended Bait', recommendedBait),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScoreCard(double score) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Fishing Conditions Score',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: score / 100,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                score > 70
                    ? Colors.green
                    : score > 40
                        ? Colors.orange
                        : Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${score.toStringAsFixed(1)}%',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherCard(Weather weather) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Current Weather',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildWeatherRow(
              Icons.thermostat,
              'Temperature',
              '${weather.temperature?.celsius?.toStringAsFixed(1)}°C',
            ),
            _buildWeatherRow(
              Icons.water_drop,
              'Humidity',
              '${weather.humidity}%',
            ),
            _buildWeatherRow(
              Icons.air,
              'Wind Speed',
              '${weather.windSpeed?.toStringAsFixed(1)} km/h',
            ),
            _buildWeatherRow(
              Icons.compress,
              'Pressure',
              '${weather.pressure?.toStringAsFixed(0)} hPa',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(label),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}
