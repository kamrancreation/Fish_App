import 'package:freezed_annotation/freezed_annotation.dart';
import '../../ar/models/fish_measurement.dart';

part 'tournament_entry.freezed.dart';
part 'tournament_entry.g.dart';

@freezed
class TournamentEntry with _$TournamentEntry {
  const factory TournamentEntry({
    required String id,
    required String userId,
    required String tournamentId,
    required DateTime timestamp,
    required List<FishMeasurement> fishMeasurements,
    required List<String> images,
    required Map<String, dynamic> location,
    String? description,
    List<String>? tags,
    Map<String, dynamic>? verificationData,
    Map<String, dynamic>? additionalData,
  }) = _TournamentEntry;

  factory TournamentEntry.fromJson(Map<String, dynamic> json) =>
      _$TournamentEntryFromJson(json);
}
