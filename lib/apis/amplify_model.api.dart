// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyModelApi<T extends Model> implements AmplifyModelApiAbstract<T> {
  AmplifyModelApi(
    this._amplifyApiService,
    this._operations,
  );

  final AmplifyApiServiceAbstract<T> _amplifyApiService;
  final AmplifyModelApiOperations<T> _operations;

  @override
  Future<(T?, List<GraphQLResponseError>)> get(String id) async {
    final response = await _amplifyApiService.get(
      modelType: _operations.modelType,
      operation: _operations.get,
      id: id,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final (response, errors) = await _amplifyApiService.list(
      modelType: _operations.modelType,
      operation: _operations.list,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (response, errors);
  }

  @override
  Future<(T?, List<GraphQLResponseError>)> create(T item) async {
    final response = await _amplifyApiService.create(
      modelType: _operations.modelType,
      operation: _operations.create,
      input: item.toMap(),
    );

    return (response.data, response.errors);
  }

  @override
  Future<(T?, List<GraphQLResponseError>)> update(T item) async {
    final response = await _amplifyApiService.update(
      modelType: _operations.modelType,
      operation: _operations.update,
      input: item.toMap(),
    );

    return (response.data, response.errors);
  }

  @override
  Future<(T?, List<GraphQLResponseError>)> delete(String id) async {
    final response = await _amplifyApiService.delete(
      modelType: _operations.modelType,
      operation: _operations.delete,
      id: id,
    );

    return (response.data, response.errors);
  }
}
