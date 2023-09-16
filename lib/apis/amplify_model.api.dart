// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/queries.dart';
import 'package:sujud/models/models.dart';

class AmplifyModelApi<T extends Model> implements AmplifyModelApiAbstract<T> {
  AmplifyModelApi() {
    switch (T) {
      case User:
        _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<User>>()
                as AmplifyApiServiceAbstract<T>;
        _modelType = User.classType as ModelType<T>;
        _readOperationName = Queries.getUser;
        _readDocument = Queries.getUserDocument;
      case Mosque:
        _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<Mosque>>()
                as AmplifyApiServiceAbstract<T>;
        _modelType = Mosque.classType as ModelType<T>;
        _readOperationName = Queries.getMosque;
        _readDocument = Queries.getMosqueDocument;
        break;
    }
  }

  late final AmplifyApiServiceAbstract<T> _amplifyApiService;
  late final ModelType<T> _modelType;
  late final String _readOperationName;
  late final String _readDocument;

  @override
  Future<(T? item, Error? error)> create(T item) async {
    try {
      final response = await _amplifyApiService.create(item);

      return (response, null);
    } catch (error) {
      return (null, Error());
    }
  }

  @override
  Future<(T? item, List<GraphQLResponseError>? error)> read(
    String id,
  ) async {
    final response = await _amplifyApiService.graphQLRequest(
      modelType: this._modelType,
      operationName: _readOperationName,
      document: _readDocument,
      variables: {
        'id': id,
      },
    );

    return (response.data, response.errors);
  }

  @override
  Future<(T? item, Error? error)> update(T item) async {
    try {
      final response = await _amplifyApiService.update(item);

      return (response, null);
    } catch (error) {
      return (null, Error());
    }
  }

  @override
  Future<(T? item, Error? error)> delete(T item) async {
    try {
      final response = await _amplifyApiService.delete(item);

      return (response, null);
    } catch (error) {
      return (null, Error());
    }
  }

  @override
  Future<PaginatedResult<T>?> list({
    int? limit,
    QueryPredicate? where,
    String? nextToken,
  }) async {
    final response = await _amplifyApiService.list(
      _modelType,
      limit: limit,
      where: where,
      nextToken: nextToken,
    );

    return response;
  }

  @override
  Future<PaginatedResult<T>?> listMore({
    required GraphQLRequest<PaginatedResult<T>> nextRequest,
  }) async {
    final response = await _amplifyApiService.listMore(nextRequest);

    return response;
  }
}
