// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class BaseRepoAbstract<T> {
  List<T> get cache;

  Future<T?> create(T item);
  Future<T?> read(String id);
  Future<T?> update(T item);
  Future<T?> delete(T item);

  Future<void> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });
  Future<void> listMore();

  Future<int> count({QueryPredicate? where});

  void clearCache();
}
