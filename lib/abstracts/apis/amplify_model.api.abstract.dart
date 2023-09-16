// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyModelApiAbstract<T extends Model> {
  Future<(T?, Error?)> create(T item);

  Future<(T?, List<GraphQLResponseError>?)> read(String id);

  Future<(T?, Error?)> update(T item);

  Future<(T?, Error?)> delete(T item);

  Future<PaginatedResult<T>?> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });

  Future<PaginatedResult<T>?> listMore({
    required GraphQLRequest<PaginatedResult<T>> nextRequest,
  });
}
