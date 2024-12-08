import 'package:freezed_annotation/freezed_annotation.dart';

part 'fish_species.freezed.dart';
part 'fish_species.g.dart';

@freezed
class FishSpecies with _$FishSpecies {
  const factory FishSpecies({
    required String id,
    required String name,
    required String scientificName,
    required String description,
    required String habitat,
    required String imageUrl,
    required bool isFreshwater,
    required bool isSaltwater,
    required double averageWeight,
    required double maxWeight,
    required double averageLength,
    required double maxLength,
    required Map<String, dynamic> seasonalPatterns,
    required List<String> commonLocations,
    required List<String> bestBaits,
    required List<String> techniques,
    required Map<String, dynamic> regulations,
  }) = _FishSpecies;

  factory FishSpecies.fromJson(Map<String, dynamic> json) =>
      _$FishSpeciesFromJson(json);
}
