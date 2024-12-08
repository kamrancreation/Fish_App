class GearUtils {
  static const Map<String, List<String>> gearCategories = {
    'Rods': ['Spinning', 'Casting', 'Fly', 'Telescopic', 'Ice Fishing'],
    'Reels': ['Spinning', 'Baitcasting', 'Fly', 'Spincast', 'Conventional'],
    'Lines': ['Monofilament', 'Fluorocarbon', 'Braided', 'Fly Line', 'Wire'],
    'Lures': ['Soft Plastics', 'Hard Baits', 'Spoons', 'Flies', 'Jigs'],
    'Terminal Tackle': ['Hooks', 'Sinkers', 'Swivels', 'Leaders', 'Beads'],
    'Tools': ['Pliers', 'Scissors', 'Knot Tools', 'Hook Removers', 'Scales'],
    'Storage': ['Tackle Boxes', 'Bags', 'Rod Holders', 'Line Spoolers'],
    'Accessories': ['Nets', 'Gaffs', 'Fish Grips', 'Measuring Devices'],
  };

  static String categorizeGearItem(String itemName) {
    itemName = itemName.toLowerCase();
    for (final entry in gearCategories.entries) {
      for (final subCategory in entry.value) {
        if (itemName.contains(subCategory.toLowerCase())) {
          return entry.key;
        }
      }
    }
    return 'Other';
  }

  static List<String> suggestCompatibleGear(Map<String, dynamic> gearItem) {
    final category = gearItem['category'] as String;
    final specifications = gearItem['specifications'] as Map<String, dynamic>?;
    
    switch (category) {
      case 'Rods':
        return _suggestCompatibleReels(specifications);
      case 'Reels':
        return _suggestCompatibleRods(specifications);
      case 'Lines':
        return _suggestCompatibleLures(specifications);
      default:
        return [];
    }
  }

  static List<String> _suggestCompatibleReels(Map<String, dynamic>? rodSpecs) {
    if (rodSpecs == null) return [];
    
    final powerRating = rodSpecs['power'] as String?;
    final action = rodSpecs['action'] as String?;
    
    final suggestions = <String>[];
    
    if (powerRating != null) {
      switch (powerRating.toLowerCase()) {
        case 'ultra light':
          suggestions.add('1000-2000 size spinning reel');
          break;
        case 'light':
          suggestions.add('2000-2500 size spinning reel');
          break;
        case 'medium':
          suggestions.add('3000-4000 size spinning reel');
          break;
        case 'medium heavy':
          suggestions.add('4000-5000 size spinning reel');
          break;
        case 'heavy':
          suggestions.add('5000-6000 size spinning reel');
          break;
      }
    }
    
    return suggestions;
  }

  static List<String> _suggestCompatibleRods(Map<String, dynamic>? reelSpecs) {
    if (reelSpecs == null) return [];
    
    final size = reelSpecs['size'] as String?;
    final suggestions = <String>[];
    
    if (size != null) {
      final sizeNum = int.tryParse(size.replaceAll(RegExp(r'[^0-9]'), ''));
      if (sizeNum != null) {
        if (sizeNum <= 2000) {
          suggestions.add('Ultra Light to Light power rod');
        } else if (sizeNum <= 3000) {
          suggestions.add('Light to Medium power rod');
        } else if (sizeNum <= 4000) {
          suggestions.add('Medium to Medium Heavy power rod');
        } else {
          suggestions.add('Medium Heavy to Heavy power rod');
        }
      }
    }
    
    return suggestions;
  }

  static List<String> _suggestCompatibleLures(Map<String, dynamic>? lineSpecs) {
    if (lineSpecs == null) return [];
    
    final strength = lineSpecs['strength'] as num?;
    final suggestions = <String>[];
    
    if (strength != null) {
      if (strength < 6) {
        suggestions.addAll(['Small jigs', 'Light soft plastics', 'Small spinners']);
      } else if (strength < 12) {
        suggestions.addAll(['Medium jigs', 'Soft plastics', 'Crankbaits']);
      } else if (strength < 20) {
        suggestions.addAll(['Heavy jigs', 'Large soft plastics', 'Swimbaits']);
      } else {
        suggestions.addAll(['Extra heavy jigs', 'Large swimbaits', 'Deep diving plugs']);
      }
    }
    
    return suggestions;
  }

  static Map<String, dynamic> calculateGearStats(List<Map<String, dynamic>> catches) {
    if (catches.isEmpty) return {};

    final gearUsage = <String, int>{};
    final gearSuccess = <String, List<double>>{};

    for (final entry in catches) {
      final gear = entry['gear'] as String?;
      if (gear == null) continue;

      gearUsage[gear] = (gearUsage[gear] ?? 0) + 1;
      
      final weight = entry['weight'] as double?;
      if (weight != null) {
        gearSuccess.putIfAbsent(gear, () => []).add(weight);
      }
    }

    final stats = <String, dynamic>{};
    for (final gear in gearUsage.keys) {
      final successRates = gearSuccess[gear] ?? [];
      stats[gear] = {
        'usage': gearUsage[gear],
        'avgWeight': successRates.isEmpty ? 0.0 :
            successRates.reduce((a, b) => a + b) / successRates.length,
        'maxWeight': successRates.isEmpty ? 0.0 :
            successRates.reduce((a, b) => a > b ? a : b),
      };
    }

    return stats;
  }

  static bool areGearItemsCompatible(
    Map<String, dynamic> item1,
    Map<String, dynamic> item2,
  ) {
    final category1 = item1['category'] as String;
    final category2 = item2['category'] as String;
    final specs1 = item1['specifications'] as Map<String, dynamic>?;
    final specs2 = item2['specifications'] as Map<String, dynamic>?;

    // Check rod and reel compatibility
    if ((category1 == 'Rods' && category2 == 'Reels') ||
        (category1 == 'Reels' && category2 == 'Rods')) {
      return _checkRodReelCompatibility(
        category1 == 'Rods' ? specs1 : specs2,
        category1 == 'Reels' ? specs1 : specs2,
      );
    }

    return false;
  }

  static bool _checkRodReelCompatibility(
    Map<String, dynamic>? rodSpecs,
    Map<String, dynamic>? reelSpecs,
  ) {
    if (rodSpecs == null || reelSpecs == null) return false;

    final rodPower = rodSpecs['power'] as String?;
    final reelSize = reelSpecs['size'] as String?;

    if (rodPower == null || reelSize == null) return false;

    final sizeNum = int.tryParse(reelSize.replaceAll(RegExp(r'[^0-9]'), ''));
    if (sizeNum == null) return false;

    switch (rodPower.toLowerCase()) {
      case 'ultra light':
        return sizeNum <= 2000;
      case 'light':
        return sizeNum > 1000 && sizeNum <= 2500;
      case 'medium':
        return sizeNum >= 2500 && sizeNum <= 4000;
      case 'medium heavy':
        return sizeNum >= 3000 && sizeNum <= 5000;
      case 'heavy':
        return sizeNum >= 4000;
      default:
        return false;
    }
  }
}
