// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catch_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catchServiceHash() => r'6942a296736f001cab53d79788a4bb57cdbbe63f';

/// See also [catchService].
@ProviderFor(catchService)
final catchServiceProvider = AutoDisposeProvider<CatchService>.internal(
  catchService,
  name: r'catchServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$catchServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CatchServiceRef = AutoDisposeProviderRef<CatchService>;
String _$userCatchesHash() => r'047e21cb270559ac8ebee210b56bc61746dab285';

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

/// See also [userCatches].
@ProviderFor(userCatches)
const userCatchesProvider = UserCatchesFamily();

/// See also [userCatches].
class UserCatchesFamily extends Family<AsyncValue<List<CatchModel>>> {
  /// See also [userCatches].
  const UserCatchesFamily();

  /// See also [userCatches].
  UserCatchesProvider call(
    String userId,
  ) {
    return UserCatchesProvider(
      userId,
    );
  }

  @override
  UserCatchesProvider getProviderOverride(
    covariant UserCatchesProvider provider,
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
  String? get name => r'userCatchesProvider';
}

/// See also [userCatches].
class UserCatchesProvider extends AutoDisposeStreamProvider<List<CatchModel>> {
  /// See also [userCatches].
  UserCatchesProvider(
    String userId,
  ) : this._internal(
          (ref) => userCatches(
            ref as UserCatchesRef,
            userId,
          ),
          from: userCatchesProvider,
          name: r'userCatchesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userCatchesHash,
          dependencies: UserCatchesFamily._dependencies,
          allTransitiveDependencies:
              UserCatchesFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserCatchesProvider._internal(
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
    Stream<List<CatchModel>> Function(UserCatchesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserCatchesProvider._internal(
        (ref) => create(ref as UserCatchesRef),
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
    return _UserCatchesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserCatchesProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserCatchesRef on AutoDisposeStreamProviderRef<List<CatchModel>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserCatchesProviderElement
    extends AutoDisposeStreamProviderElement<List<CatchModel>>
    with UserCatchesRef {
  _UserCatchesProviderElement(super.provider);

  @override
  String get userId => (origin as UserCatchesProvider).userId;
}

String _$tournamentCatchesHash() => r'8e900c4737740933e3ca0fd7d87a00015042672e';

/// See also [tournamentCatches].
@ProviderFor(tournamentCatches)
const tournamentCatchesProvider = TournamentCatchesFamily();

/// See also [tournamentCatches].
class TournamentCatchesFamily extends Family<AsyncValue<List<CatchModel>>> {
  /// See also [tournamentCatches].
  const TournamentCatchesFamily();

  /// See also [tournamentCatches].
  TournamentCatchesProvider call(
    String tournamentId,
  ) {
    return TournamentCatchesProvider(
      tournamentId,
    );
  }

  @override
  TournamentCatchesProvider getProviderOverride(
    covariant TournamentCatchesProvider provider,
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
  String? get name => r'tournamentCatchesProvider';
}

/// See also [tournamentCatches].
class TournamentCatchesProvider
    extends AutoDisposeStreamProvider<List<CatchModel>> {
  /// See also [tournamentCatches].
  TournamentCatchesProvider(
    String tournamentId,
  ) : this._internal(
          (ref) => tournamentCatches(
            ref as TournamentCatchesRef,
            tournamentId,
          ),
          from: tournamentCatchesProvider,
          name: r'tournamentCatchesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tournamentCatchesHash,
          dependencies: TournamentCatchesFamily._dependencies,
          allTransitiveDependencies:
              TournamentCatchesFamily._allTransitiveDependencies,
          tournamentId: tournamentId,
        );

  TournamentCatchesProvider._internal(
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
    Stream<List<CatchModel>> Function(TournamentCatchesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TournamentCatchesProvider._internal(
        (ref) => create(ref as TournamentCatchesRef),
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
    return _TournamentCatchesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TournamentCatchesProvider &&
        other.tournamentId == tournamentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tournamentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TournamentCatchesRef on AutoDisposeStreamProviderRef<List<CatchModel>> {
  /// The parameter `tournamentId` of this provider.
  String get tournamentId;
}

class _TournamentCatchesProviderElement
    extends AutoDisposeStreamProviderElement<List<CatchModel>>
    with TournamentCatchesRef {
  _TournamentCatchesProviderElement(super.provider);

  @override
  String get tournamentId => (origin as TournamentCatchesProvider).tournamentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
