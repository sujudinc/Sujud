// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyApiService<T extends Model>
    implements AmplifyApiServiceAbstract<T> {
  AmplifyApiService() : _api = Amplify.API;

  final APICategory _api;

  @override
  Future<T?> create(T item) async {
    final response = await _api
        .mutate(
          request: ModelMutations.create(item),
        )
        .response;

    return response.data;
  }

  @override
  Future<T?> read(
    ModelType<T> modelType, {
    int? limit,
    QueryPredicate? where,
  }) async {
    final response = await _api
        .query(
          request: ModelQueries.list(
            modelType,
            limit: limit,
            where: where,
          ),
        )
        .response;

    return response.data != null && response.data!.items.isNotEmpty
        ? response.data!.items.first
        : null;
  }

  @override
  Future<T?> update(T item) async {
    final response = await _api
        .mutate(
          request: ModelMutations.update(item),
        )
        .response;

    return response.data;
  }

  @override
  Future<T?> delete(T item) async {
    final response = await _api
        .mutate(
          request: ModelMutations.delete(item),
        )
        .response;

    return response.data;
  }

  @override
  Future<PaginatedResult<T>?> list(
    ModelType<T> modelType, {
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  }) async {
    final response = await _api
        .query(
          request: ModelQueries.list<T>(
            modelType,
            limit: limit,
            where: where,
          ),
        )
        .response;

    return response.data;
  }

  @override
  Future<PaginatedResult<T>?> listMore(
    GraphQLRequest<PaginatedResult<T>> nextRequest,
  ) async {
    final response = await _api
        .query(
          request: nextRequest,
        )
        .response;

    return response.data;
  }
}
