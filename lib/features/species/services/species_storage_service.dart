import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:fishpro/features/species/models/fish_species.dart';
import 'package:fishpro/features/shared/services/network_service.dart';

class SpeciesStorageService {
  static const String _speciesBoxName = 'species_box';
  static const String _lastSyncKey = 'last_sync_timestamp';
  final NetworkService _networkService;
  late Box<String> _speciesBox;

  SpeciesStorageService(this._networkService);

  Future<void> initialize() async {
    await Hive.initFlutter();
    _speciesBox = await Hive.openBox<String>(_speciesBoxName);
  }

  Future<void> saveSpecies(List<FishSpecies> species) async {
    final speciesJson = species.map((s) => jsonEncode(s.toJson())).toList();
    await _speciesBox.putAll(
      Map.fromIterables(
        species.map((s) => s.id),
        speciesJson,
      ),
    );
    await _updateLastSyncTimestamp();
  }

  Future<List<FishSpecies>> getAllSpecies() async {
    final speciesJson = _speciesBox.values.toList();
    return speciesJson
        .map((json) => FishSpecies.fromJson(jsonDecode(json)))
        .toList();
  }

  Future<FishSpecies?> getSpeciesById(String id) async {
    final speciesJson = _speciesBox.get(id);
    if (speciesJson == null) return null;
    return FishSpecies.fromJson(jsonDecode(speciesJson));
  }

  Future<void> syncWithServer() async {
    if (!await _networkService.isConnected()) {
      return;
    }

    final lastSync = await getLastSyncTimestamp();
    final updatedSpecies = await _fetchUpdatedSpecies(lastSync);
    await saveSpecies(updatedSpecies);
  }

  Future<List<FishSpecies>> _fetchUpdatedSpecies(DateTime? lastSync) async {
    // In a real app, you would fetch from your backend
    // For now, return local data
    return [...freshwaterSpecies, ...saltwaterSpecies];
  }

  Future<DateTime?> getLastSyncTimestamp() async {
    final timestamp = _speciesBox.get(_lastSyncKey);
    return timestamp != null ? DateTime.parse(timestamp) : null;
  }

  Future<void> _updateLastSyncTimestamp() async {
    await _speciesBox.put(_lastSyncKey, DateTime.now().toIso8601String());
  }

  Future<void> clearCache() async {
    await _speciesBox.clear();
  }
}
