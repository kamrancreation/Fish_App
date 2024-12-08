// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catch_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catchRepositoryHash() => r'c1dfcc9961eae14e323f74c067738299cfa520c9';

/// See also [catchRepository].
@ProviderFor(catchRepository)
final catchRepositoryProvider = AutoDisposeProvider<CatchRepository>.internal(
  catchRepository,
  name: r'catchRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$catchRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CatchRepositoryRef = AutoDisposeProviderRef<CatchRepository>;
String _$userCatchesStreamHash() => r'a154c9fb3128ee2ce0d822d558562ef9024cde13';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [userCatchesStream].
@ProviderFor(userCatchesStream)
const userCatchesStreamProvider = UserCatchesStreamFamily();

/// See also [userCatchesStream].
class UserCatchesStreamFamily extends Family<AsyncValue<List<CatchModel>>> {
  /// See also [userCatchesStream].
  const UserCatchesStreamFamily();

  /// See also [userCatchesStream].
  UserCatchesStreamProvider call(
    String userId,
  ) {
    return UserCatchesStreamProvider(
      userId,
    );
  }

  @override
  UserCatchesStreamProvider getProviderOverride(
    covariant UserCatchesStreamProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userCatchesStreamProvider';
}

/// See also [userCatchesStream].
class UserCatchesStreamProvider
    extends AutoDisposeStreamProvider<List<CatchModel>> {
  /// See also [userCatchesStream].
  UserCatchesStreamProvider(
    String userId,
  ) : this._internal(
          (ref) => userCatchesStream(
            ref as UserCatchesStreamRef,
            userId,
          ),
          from: userCatchesStreamProvider,
          name: r'userCatchesStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userCatchesStreamHash,
          dependencies: UserCatchesStreamFamily._dependencies,
          allTransitiveDependencies:
              UserCatchesStreamFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserCatchesStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    Stream<List<CatchModel>> Function(UserCatchesStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserCatchesStreamProvider._internal(
        (ref) => create(ref as UserCatchesStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<CatchModel>> createElement() {
    return _UserCatchesStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserCatchesStreamProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserCatchesStreamRef on AutoDisposeStreamProviderRef<List<CatchModel>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserCatchesStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<CatchModel>>
    with UserCatchesStreamRef {
  _UserCatchesStreamProviderElement(super.provider);

  @override
  String get userId => (origin as UserCatchesStreamProvider).userId;
}

String _$tournamentCatchesStreamHash() =>
    r'107baf92f39532902e0737b3e34f6e6300a5fef5';

/// See also [tournamentCatchesStream].
@ProviderFor(tournamentCatchesStream)
const tournamentCatchesStreamProvider = TournamentCatchesStreamFamily();

/// See also [tournamentCatchesStream].
class TournamentCatchesStreamFamily
    extends Family<AsyncValue<List<CatchModel>>> {
  /// See also [tournamentCatchesStream].
  const TournamentCatchesStreamFamily();

  /// See also [tournamentCatchesStream].
  TournamentCatchesStreamProvider call(
    String tournamentId,
  ) {
    return TournamentCatchesStreamProvider(
      tournamentId,
    );
  }

  @override
  TournamentCatchesStreamProvider getProviderOverride(
    covariant TournamentCatchesStreamProvider provider,
  ) {
    return call(
      provider.tournamentId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tournamentCatchesStreamProvider';
}

/// See also [tournamentCatchesStream].
class TournamentCatchesStreamProvider
    extends AutoDisposeStreamProvider<List<CatchModel>> {
  /// See also [tournamentCatchesStream].
  TournamentCatchesStreamProvider(
    String tournamentId,
  ) : this._internal(
          (ref) => tournamentCatchesStream(
            ref as TournamentCatchesStreamRef,
            tournamentId,
          ),
          from: tournamentCatchesStreamProvider,
          name: r'tournamentCatchesStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tournamentCatchesStreamHash,
          dependencies: TournamentCatchesStreamFamily._dependencies,
          allTransitiveDependencies:
              TournamentCatchesStreamFamily._allTransitiveDependencies,
          tournamentId: tournamentId,
        );

  TournamentCatchesStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tournamentId,
  }) : super.internal();

  final String tournamentId;

  @override
  Override overrideWith(
    Stream<List<CatchModel>> Function(TournamentCatchesStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TournamentCatchesStreamProvider._internal(
        (ref) => create(ref as TournamentCatchesStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tournamentId: tournamentId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<CatchModel>> createElement() {
    return _TournamentCatchesStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TournamentCatchesStreamProvider &&
        other.tournamentId == tournamentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tournamentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TournamentCatchesStreamRef
    on AutoDisposeStreamProviderRef<List<CatchModel>> {
  /// The parameter `tournamentId` of this provider.
  String get tournamentId;
}

class _TournamentCatchesStreamProviderElement
    extends AutoDisposeStreamProviderElement<List<CatchModel>>
    with TournamentCatchesStreamRef {
  _TournamentCatchesStreamProviderElement(super.provider);

  @override
  String get tournamentId =>
      (origin as TournamentCatchesStreamProvider).tournamentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
