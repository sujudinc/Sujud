// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class BaseRepoAbstract<T extends Model> {
  List<T> get items;

  Future<(T?, Error?)> create(T item);

  Future<(T?, List<GraphQLResponseError>?)> read(String id);

  Future<(T?, Error?)> update(T item);

  Future<(T?, Error?)> delete(T item);

  Future<void> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });

  Future<void> listMore();

  void clearCache();
}
