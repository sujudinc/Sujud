import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

abstract class AmplifyApiServiceAbstract<T extends Model> {
  Future<T?> create(T item);

  Future<T?> read(
    ModelType<T> modelType, {
    int? limit,
    QueryPredicate? where,
  });

  Future<T?> update(T item);

  Future<T?> delete(T item);

  Future<PaginatedResult<T>?> list(
    ModelType<T> modelType, {
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  });

  Future<PaginatedResult<T>?> listMore(
    GraphQLRequest<PaginatedResult<T>> nextRequest,
  );
}
