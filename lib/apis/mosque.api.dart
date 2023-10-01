// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class MosqueApi implements AmplifyModelApiAbstract<Mosque> {
  MosqueApi()
      : _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<Mosque>>(),
        _operations = MosqueOperations();

  final AmplifyApiServiceAbstract<Mosque> _amplifyApiService;
  final AmplifyModelApiOperations<Mosque> _operations;

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> get(String id) async {
    final response = await _amplifyApiService.get(
      modelType: _operations.modelType,
      operation: _operations.get,
      id: id,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(GraphQLListResponse<Mosque>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final (data, errors) = await _amplifyApiService.list(
      modelType: _operations.modelType,
      operation: _operations.list,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (data, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> create(
    Mosque item,
  ) async {
    final response = await _amplifyApiService.create(
      modelType: _operations.modelType,
      operation: _operations.create,
      input: <String, dynamic>{},
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> update(
    Mosque item,
  ) async {
    final response = await _amplifyApiService.update(
      modelType: _operations.modelType,
      operation: _operations.update,
      input: <String, dynamic>{
        'id': item.id,
      },
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> delete(String id) async {
    final response = await _amplifyApiService.delete(
      modelType: _operations.modelType,
      operation: _operations.delete,
      id: id,
    );

    return (response.data, response.errors);
  }

  @override
  Stream<GraphqlSubscriptionResponse<Mosque>> subscribe({
    required ModelType<Mosque> modelType,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  }) {
    final streams = StreamGroup.merge<GraphqlSubscriptionResponse<Mosque>>([
      _amplifyApiService
          .subscribe(
            modelType: modelType,
            operation: _operations.onCreate,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Mosque>(
                type: SubscriptionType.onCreate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: modelType,
            operation: _operations.onUpdate,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Mosque>(
                type: SubscriptionType.onUpdate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: modelType,
            operation: _operations.onDelete,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Mosque>(
                type: SubscriptionType.onDelete,
                response: response,
              )),
    ]);

    return streams;
  }
}
