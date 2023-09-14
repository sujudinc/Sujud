// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyApiAbstract<T extends Model> {
  Future<T?> create(T item);
  Future<T?> read(String id);
  Future<T?> update(T item);
  Future<T?> delete(T item);

  Future<PaginatedResult<T>?> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });

  Future<PaginatedResult<T>?> listMore({
    required GraphQLRequest<PaginatedResult<T>> nextRequest,
  });
}
