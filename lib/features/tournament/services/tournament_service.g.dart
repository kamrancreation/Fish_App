// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tournamentServiceHash() => r'a59d5d1419cd33c09d16981021c4a67c30122191';

/// See also [tournamentService].
@ProviderFor(tournamentService)
final tournamentServiceProvider =
    AutoDisposeProvider<TournamentService>.internal(
  tournamentService,
  name: r'tournamentServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tournamentServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TournamentServiceRef = AutoDisposeProviderRef<TournamentService>;
String _$activeTournamentsHash() => r'2f8630d3bee048a1acfa461bc9bcc5d59fb979c2';

/// See also [activeTournaments].
@ProviderFor(activeTournaments)
final activeTournamentsProvider =
    AutoDisposeStreamProvider<List<TournamentModel>>.internal(
  activeTournaments,
  name: r'activeTournamentsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeTournamentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ActiveTournamentsRef
    = AutoDisposeStreamProviderRef<List<TournamentModel>>;
String _$upcomingTournamentsHash() =>
    r'd9f6a47d2771dde9a397dc58dedf1385e5e4e6e8';

/// See also [upcomingTournaments].
@ProviderFor(upcomingTournaments)
final upcomingTournamentsProvider =
    AutoDisposeStreamProvider<List<TournamentModel>>.internal(
  upcomingTournaments,
  name: r'upcomingTournamentsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upcomingTournamentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpcomingTournamentsRef
    = AutoDisposeStreamProviderRef<List<TournamentModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
