// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tournamentRepositoryHash() =>
    r'd85826c18e00ccbbbcf767a5d48c9ef5a3045855';

/// See also [tournamentRepository].
@ProviderFor(tournamentRepository)
final tournamentRepositoryProvider =
    AutoDisposeProvider<TournamentRepository>.internal(
  tournamentRepository,
  name: r'tournamentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tournamentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TournamentRepositoryRef = AutoDisposeProviderRef<TournamentRepository>;
String _$activeTournamentsStreamHash() =>
    r'19d8ac970724eba853623d40a608e1b525fe664d';

/// See also [activeTournamentsStream].
@ProviderFor(activeTournamentsStream)
final activeTournamentsStreamProvider =
    AutoDisposeStreamProvider<List<TournamentModel>>.internal(
  activeTournamentsStream,
  name: r'activeTournamentsStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeTournamentsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ActiveTournamentsStreamRef
    = AutoDisposeStreamProviderRef<List<TournamentModel>>;
String _$upcomingTournamentsStreamHash() =>
    r'700babb44b785fd3be268d677e8b37b85336851d';

/// See also [upcomingTournamentsStream].
@ProviderFor(upcomingTournamentsStream)
final upcomingTournamentsStreamProvider =
    AutoDisposeStreamProvider<List<TournamentModel>>.internal(
  upcomingTournamentsStream,
  name: r'upcomingTournamentsStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upcomingTournamentsStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpcomingTournamentsStreamRef
    = AutoDisposeStreamProviderRef<List<TournamentModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
