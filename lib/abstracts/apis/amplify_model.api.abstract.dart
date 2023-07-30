// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyModelApiAbstract<T extends Model> {
  Future<T?> create(T item);
  Future<T?> read(String id);
  Future<T?> update(T item);
  Future<T?> delete(T item);

  Future<PaginatedResult<T>> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });

  Future<int> count({QueryPredicate? where});
}
