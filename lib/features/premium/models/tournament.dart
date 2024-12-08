import 'package:freezed_annotation/freezed_annotation.dart';
import 'tournament_entry.dart';

part 'tournament.freezed.dart';
part 'tournament.g.dart';

enum TournamentStatus {
  upcoming,
  active,
  completed,
  cancelled
}

@freezed
class Tournament with _$Tournament {
  const factory Tournament({
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required List<String> rules,
    required Map<String, dynamic> prizes,
    required List<String> sponsors,
    required Map<String, dynamic> verificationRules,
    required TournamentStatus status,
    required List<TournamentEntry> entries,
    required List<String> streams,
    String? description,
    String? bannerImage,
    Map<String, dynamic>? sponsorDetails,
    Map<String, dynamic>? certificationData,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}
