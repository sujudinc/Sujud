// 📦 Package imports:
import 'package:localstore/localstore.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class LocalDatabaseUtility implements LocalDatabaseUtilityAbstract {
  LocalDatabaseUtility({Localstore? localstore, String? collectionName})
      : _localstore = localstore ?? Localstore.instance,
        _collectionName = collectionName ?? 'sujud',
        _dataExpirationDuration = const Duration(days: 7);

  final Localstore _localstore;
  final String _collectionName;
  final Duration _dataExpirationDuration;

  @override
  Future<Map<String, dynamic>?> getOne(String id) async {
    final doc = await _localstore.collection(_collectionName).doc(id).get();

    if (doc != null && doc.containsKey('data')) {
      final data = doc['data'] as Map<String, dynamic>;
      final ttlString = doc['ttl'] as String?;
      final ttl = ttlString != null ? DateTime.parse(ttlString) : null;

      if (ttl == null || DateTime.now().isBefore(ttl)) {
        return data;
      } else {
        await delete(id);
      }
    }

    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> getMany({
    CollectionRef Function(CollectionRef query)? queryBuilder,
  }) async {
    final docs = <Map<String, dynamic>>[];
    final query = _localstore.collection(_collectionName);

    if (queryBuilder != null) {
      queryBuilder(query);
    }

    final response = await query.get();

    if (response != null) {
      final now = DateTime.now();

      for (final doc in response.values) {
        final data = doc['data'] as Map<String, dynamic>;
        final ttlString = doc['ttl'] as String?;
        final ttl = ttlString != null ? DateTime.parse(ttlString) : null;

        if (ttl == null || now.isBefore(ttl)) {
          docs.add(data);
        } else {
          await delete(data['id']);
        }
      }
    }

    return docs;
  }

  @override
  Future<void> save(String id, Map<String, dynamic> data) async {
    await _localstore.collection(_collectionName).doc(id).set({
      'data': data,
      'ttl': DateTime.now().add(_dataExpirationDuration).toIso8601String(),
    });
  }

  @override
  Future<void> delete(String id) async {
    await _localstore.collection(_collectionName).doc(id).delete();
  }

  @override
  Stream<Map<String, dynamic>?> stream() {
    final stream = _localstore.collection(_collectionName).stream;

    return stream.map((doc) {
      final now = DateTime.now();
      final data = doc['data'] as Map<String, dynamic>;
      final ttl = doc['ttl'] as DateTime?;

      if (ttl == null || now.isBefore(ttl)) {
        return data;
      } else {
        delete(data['id']);
        return null;
      }
    });
  }
}
