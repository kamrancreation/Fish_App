import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';
import '../models/catch_model.dart';
import '../models/tournament_model.dart';
import '../models/species_model.dart';
import '../models/gear_model.dart';
import 'base_repository.dart';

class UserRepository extends BaseRepository<UserModel> {
  UserRepository(FirebaseFirestore firestore) : super(firestore, 'users');

  Future<UserModel?> getUserById(String id) async {
    final data = await get(id);
    return data != null
        ? UserModel.fromFirestore(await collection.doc(id).get())
        : null;
  }

  Future<String> createUser(UserModel user) async {
    return await add(user.toMap());
  }

  Stream<UserModel?> getUserStream(String id) {
    return collection
        .doc(id)
        .snapshots()
        .map((doc) => doc.exists ? UserModel.fromFirestore(doc) : null);
  }
}

class CatchRepository extends BaseRepository<CatchModel> {
  CatchRepository(FirebaseFirestore firestore) : super(firestore, 'catches');

  Future<List<CatchModel>> getUserCatches(String userId) async {
    final snapshot = await query(
      whereConditions: [
        ['userId', '==', userId]
      ],
      orderBy: 'timestamp',
      descending: true,
    );
    return snapshot.docs.map((doc) => CatchModel.fromFirestore(doc)).toList();
  }

  Future<List<CatchModel>> getTournamentCatches(String tournamentId) async {
    final snapshot = await query(
      whereConditions: [
        ['tournamentId', '==', tournamentId]
      ],
      orderBy: 'timestamp',
      descending: true,
    );
    return snapshot.docs.map((doc) => CatchModel.fromFirestore(doc)).toList();
  }
}

class TournamentRepository extends BaseRepository<TournamentModel> {
  TournamentRepository(FirebaseFirestore firestore)
      : super(firestore, 'tournaments');

  Future<List<TournamentModel>> getActiveTournaments() async {
    final snapshot = await query(
      whereConditions: [
        ['status', '==', 'active']
      ],
      orderBy: 'startDate',
    );
    return snapshot.docs
        .map((doc) => TournamentModel.fromFirestore(doc))
        .toList();
  }

  Future<List<TournamentModel>> getUserTournaments(String userId) async {
    final snapshot = await query(
      whereConditions: [
        ['participants', 'array-contains', userId]
      ],
      orderBy: 'startDate',
      descending: true,
    );
    return snapshot.docs
        .map((doc) => TournamentModel.fromFirestore(doc))
        .toList();
  }
}

class SpeciesRepository extends BaseRepository<SpeciesModel> {
  SpeciesRepository(FirebaseFirestore firestore) : super(firestore, 'species');

  Future<List<SpeciesModel>> searchSpecies(String query) async {
    final snapshot = await this.query(
      whereConditions: [
        ['commonName', '>=', query],
        ['commonName', '<=', '$query\uf8ff'],
      ],
      limit: 10,
    );
    return snapshot.docs.map((doc) => SpeciesModel.fromFirestore(doc)).toList();
  }

  Future<List<SpeciesModel>> getProtectedSpecies() async {
    final snapshot = await query(
      whereConditions: [
        ['isProtected', '==', true]
      ],
    );
    return snapshot.docs.map((doc) => SpeciesModel.fromFirestore(doc)).toList();
  }
}

class GearRepository extends BaseRepository<GearModel> {
  GearRepository(FirebaseFirestore firestore) : super(firestore, 'gear');

  Future<List<GearModel>> getUserGear(String userId) async {
    final snapshot = await query(
      whereConditions: [
        ['userId', '==', userId]
      ],
      orderBy: 'category',
    );
    return snapshot.docs.map((doc) => GearModel.fromFirestore(doc)).toList();
  }

  Future<List<GearModel>> getGearByCategory(
      String userId, GearCategory category) async {
    final snapshot = await query(
      whereConditions: [
        ['userId', '==', userId],
        ['category', '==', category.toString().split('.').last],
      ],
    );
    return snapshot.docs.map((doc) => GearModel.fromFirestore(doc)).toList();
  }
}
