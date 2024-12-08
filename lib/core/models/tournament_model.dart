import 'package:cloud_firestore/cloud_firestore.dart';

enum TournamentStatus { upcoming, active, completed, cancelled }
enum ScoringSystem { totalWeight, totalLength, pointBased, custom }

class TournamentModel {
  final String id;
  final String name;
  final String description;
  final String organizerId;
  final DateTime startDate;
  final DateTime endDate;
  final GeoPoint location;
  final double entryFee;
  final double prizePools;
  final int maxParticipants;
  final List<String> participants;
  final Map<String, int> leaderboard;
  final TournamentStatus status;
  final ScoringSystem scoringSystem;
  final Map<String, dynamic> rules;
  final Map<String, dynamic> prizes;
  final List<String> sponsors;
  final bool requiresVerification;
  final bool allowsLiveStreaming;

  TournamentModel({
    required this.id,
    required this.name,
    required this.description,
    required this.organizerId,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.entryFee,
    required this.prizePools,
    required this.maxParticipants,
    this.participants = const [],
    this.leaderboard = const {},
    this.status = TournamentStatus.upcoming,
    this.scoringSystem = ScoringSystem.totalWeight,
    this.rules = const {},
    this.prizes = const {},
    this.sponsors = const [],
    this.requiresVerification = true,
    this.allowsLiveStreaming = true,
  });

  factory TournamentModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TournamentModel(
      id: doc.id,
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      organizerId: data['organizerId'] ?? '',
      startDate: (data['startDate'] as Timestamp).toDate(),
      endDate: (data['endDate'] as Timestamp).toDate(),
      location: data['location'] as GeoPoint,
      entryFee: (data['entryFee'] ?? 0).toDouble(),
      prizePools: (data['prizePools'] ?? 0).toDouble(),
      maxParticipants: data['maxParticipants'] ?? 0,
      participants: List<String>.from(data['participants'] ?? []),
      leaderboard: Map<String, int>.from(data['leaderboard'] ?? {}),
      status: TournamentStatus.values.firstWhere(
        (e) => e.toString() == 'TournamentStatus.${data['status']}',
        orElse: () => TournamentStatus.upcoming,
      ),
      scoringSystem: ScoringSystem.values.firstWhere(
        (e) => e.toString() == 'ScoringSystem.${data['scoringSystem']}',
        orElse: () => ScoringSystem.totalWeight,
      ),
      rules: Map<String, dynamic>.from(data['rules'] ?? {}),
      prizes: Map<String, dynamic>.from(data['prizes'] ?? {}),
      sponsors: List<String>.from(data['sponsors'] ?? []),
      requiresVerification: data['requiresVerification'] ?? true,
      allowsLiveStreaming: data['allowsLiveStreaming'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'organizerId': organizerId,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'location': location,
      'entryFee': entryFee,
      'prizePools': prizePools,
      'maxParticipants': maxParticipants,
      'participants': participants,
      'leaderboard': leaderboard,
      'status': status.toString().split('.').last,
      'scoringSystem': scoringSystem.toString().split('.').last,
      'rules': rules,
      'prizes': prizes,
      'sponsors': sponsors,
      'requiresVerification': requiresVerification,
      'allowsLiveStreaming': allowsLiveStreaming,
    };
  }

  TournamentModel copyWith({
    String? id,
    String? name,
    String? description,
    String? organizerId,
    DateTime? startDate,
    DateTime? endDate,
    GeoPoint? location,
    double? entryFee,
    double? prizePools,
    int? maxParticipants,
    List<String>? participants,
    Map<String, int>? leaderboard,
    TournamentStatus? status,
    ScoringSystem? scoringSystem,
    Map<String, dynamic>? rules,
    Map<String, dynamic>? prizes,
    List<String>? sponsors,
    bool? requiresVerification,
    bool? allowsLiveStreaming,
  }) {
    return TournamentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      organizerId: organizerId ?? this.organizerId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      location: location ?? this.location,
      entryFee: entryFee ?? this.entryFee,
      prizePools: prizePools ?? this.prizePools,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      participants: participants ?? this.participants,
      leaderboard: leaderboard ?? this.leaderboard,
      status: status ?? this.status,
      scoringSystem: scoringSystem ?? this.scoringSystem,
      rules: rules ?? this.rules,
      prizes: prizes ?? this.prizes,
      sponsors: sponsors ?? this.sponsors,
      requiresVerification: requiresVerification ?? this.requiresVerification,
      allowsLiveStreaming: allowsLiveStreaming ?? this.allowsLiveStreaming,
    );
  }
}
