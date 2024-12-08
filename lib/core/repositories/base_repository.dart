import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseRepository<T> {
  final FirebaseFirestore _firestore;
  final String collectionPath;

  BaseRepository(this._firestore, this.collectionPath);

  CollectionReference<Map<String, dynamic>> get collection =>
      _firestore.collection(collectionPath);

  Future<String> add(Map<String, dynamic> data) async {
    final docRef = await collection.add(data);
    return docRef.id;
  }

  Future<void> update(String id, Map<String, dynamic> data) async {
    await collection.doc(id).update(data);
  }

  Future<void> delete(String id) async {
    await collection.doc(id).delete();
  }

  Future<Map<String, dynamic>?> get(String id) async {
    final doc = await collection.doc(id).get();
    return doc.data();
  }

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<QuerySnapshot> query({
    List<List<dynamic>> whereConditions = const [],
    String? orderBy,
    bool descending = false,
    int? limit,
  }) async {
    Query query = collection;

    for (final condition in whereConditions) {
      if (condition.length == 3) {
        query = query.where(
          condition[0] as String,
          isEqualTo: condition[1] == '==' ? condition[2] : null,
          isLessThan: condition[1] == '<' ? condition[2] : null,
          isLessThanOrEqualTo: condition[1] == '<=' ? condition[2] : null,
          isGreaterThan: condition[1] == '>' ? condition[2] : null,
          isGreaterThanOrEqualTo: condition[1] == '>=' ? condition[2] : null,
          arrayContains: condition[1] == 'array-contains' ? condition[2] : null,
        );
      }
    }

    if (orderBy != null) {
      query = query.orderBy(orderBy, descending: descending);
    }

    if (limit != null) {
      query = query.limit(limit);
    }

    return query.get();
  }
}
