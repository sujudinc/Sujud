import 'package:localstore/localstore.dart';

abstract class LocalDatabaseUtilityAbstract {
  Future<Map<String, dynamic>?> getOne(String id);
  Future<List<Map<String, dynamic>>> getMany({
    CollectionRef Function(CollectionRef query)? queryBuilder,
  });
  Future<void> save(String id, Map<String, dynamic> data);
  Future<void> delete(String id);
  Stream<Map<String, dynamic>?> stream();
}
