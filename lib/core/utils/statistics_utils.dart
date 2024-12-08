class StatisticsUtils {
  static double calculateAverage(List<num> values) {
    if (values.isEmpty) return 0;
    return values.reduce((a, b) => a + b) / values.length;
  }

  static double calculateMedian(List<num> values) {
    if (values.isEmpty) return 0;
    
    final sorted = List<num>.from(values)..sort();
    final middle = sorted.length ~/ 2;
    
    if (sorted.length.isOdd) {
      return sorted[middle].toDouble();
    }
    return (sorted[middle - 1] + sorted[middle]) / 2;
  }

  static Map<String, int> calculateFrequencyDistribution(List<dynamic> values) {
    final distribution = <String, int>{};
    for (final value in values) {
      final key = value.toString();
      distribution[key] = (distribution[key] ?? 0) + 1;
    }
    return distribution;
  }

  static double calculateStandardDeviation(List<num> values) {
    if (values.isEmpty) return 0;
    
    final mean = calculateAverage(values);
    final squaredDiffs = values.map((value) => pow(value - mean, 2));
    return sqrt(squaredDiffs.reduce((a, b) => a + b) / values.length);
  }

  static List<MapEntry<String, int>> getTopNItems<T>(
    List<T> items,
    int n, {
    bool descending = true,
  }) {
    final frequency = calculateFrequencyDistribution(items);
    final sorted = frequency.entries.toList()
      ..sort((a, b) => descending
          ? b.value.compareTo(a.value)
          : a.value.compareTo(b.value));
    return sorted.take(n).toList();
  }

  static Map<String, dynamic> calculateFishingStats(List<Map<String, dynamic>> catches) {
    if (catches.isEmpty) {
      return {
        'totalCatches': 0,
        'avgWeight': 0.0,
        'avgLength': 0.0,
        'mostCommonSpecies': [],
        'bestTimeOfDay': null,
        'bestLocation': null,
      };
    }

    final weights = catches.map((c) => c['weight'] as num).toList();
    final lengths = catches.map((c) => c['length'] as num).toList();
    final species = catches.map((c) => c['species'] as String).toList();
    final times = catches.map((c) => (c['timestamp'] as DateTime).hour).toList();
    final locations = catches.map((c) => c['location'] as String).toList();

    return {
      'totalCatches': catches.length,
      'avgWeight': calculateAverage(weights),
      'avgLength': calculateAverage(lengths),
      'mostCommonSpecies': getTopNItems(species, 3),
      'bestTimeOfDay': _getMostFrequentTimeRange(times),
      'bestLocation': getTopNItems(locations, 1).first.key,
    };
  }

  static String _getMostFrequentTimeRange(List<int> hours) {
    final ranges = {
      'Early Morning (4-8)': hours.where((h) => h >= 4 && h < 8).length,
      'Morning (8-12)': hours.where((h) => h >= 8 && h < 12).length,
      'Afternoon (12-16)': hours.where((h) => h >= 12 && h < 16).length,
      'Evening (16-20)': hours.where((h) => h >= 16 && h < 20).length,
      'Night (20-4)': hours.where((h) => h >= 20 || h < 4).length,
    };

    return ranges.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;
  }

  static Map<String, dynamic> calculateSeasonalTrends(
    List<Map<String, dynamic>> catches,
    {int monthsBack = 12}
  ) {
    final now = DateTime.now();
    final startDate = DateTime(now.year, now.month - monthsBack, now.day);
    
    final filteredCatches = catches.where(
      (c) => (c['timestamp'] as DateTime).isAfter(startDate)
    ).toList();

    final monthlyStats = <String, Map<String, dynamic>>{};
    for (var i = 0; i < monthsBack; i++) {
      final month = DateTime(now.year, now.month - i, 1);
      final monthCatches = filteredCatches.where((c) {
        final timestamp = c['timestamp'] as DateTime;
        return timestamp.year == month.year && timestamp.month == month.month;
      }).toList();

      monthlyStats[_formatMonth(month)] = {
        'count': monthCatches.length,
        'avgWeight': calculateAverage(
          monthCatches.map((c) => c['weight'] as num).toList()
        ),
        'topSpecies': getTopNItems(
          monthCatches.map((c) => c['species'] as String).toList(),
          1
        ).firstOrNull?.key,
      };
    }

    return monthlyStats;
  }

  static String _formatMonth(DateTime date) {
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  static double pow(num x, num exponent) => x * x;  // Simple power function for squares
  static double sqrt(num x) => x <= 0 ? 0 : _babylonianSqrt(x);

  // Babylonian method for square root
  static double _babylonianSqrt(num x) {
    if (x == 0) return 0;
    double guess = x / 2.0;
    for (var i = 0; i < 10; i++) {
      guess = (guess + x / guess) / 2.0;
    }
    return guess;
  }
}
