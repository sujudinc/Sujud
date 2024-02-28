// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MosqueApi implements MosqueApiAbstract {
  MosqueApi()
      : _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<Mosque>>(),
        _operation = GetIt.instance.get<MosqueOperationAbstract>();

  final AmplifyApiServiceAbstract<Mosque> _amplifyApiService;
  final MosqueOperationAbstract _operation;

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> get({
    required String id,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.get(
      modelType: _operation.modelType,
      operation: _operation.get,
      id: id,
      authorizationMode: authorizationMode,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(GraphQLListResponse<Mosque>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    APIAuthorizationType? authorizationMode,
    int? limit,
    String? nextToken,
  }) async {
    final (data, errors) = await _amplifyApiService.list(
      modelType: _operation.modelType,
      operation: _operation.list,
      authorizationMode: authorizationMode,
      variables: variables,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (data, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> create({
    required Mosque item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.create(
      modelType: _operation.modelType,
      operation: _operation.create,
      input: <String, dynamic>{},
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> update({
    required Mosque item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.update(
      modelType: _operation.modelType,
      operation: _operation.update,
      input: <String, dynamic>{
        'id': item.id,
      },
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> delete({
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.delete(
      modelType: _operation.modelType,
      operation: _operation.delete,
      id: id,
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Stream<SubscriptionResponse<Mosque>> subscribe({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  }) {
    final streams = StreamGroup.merge<SubscriptionResponse<Mosque>>([
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onCreate,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<Mosque>(
                type: SubscriptionType.onCreate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onUpdate,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<Mosque>(
                type: SubscriptionType.onUpdate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onDelete,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<Mosque>(
                type: SubscriptionType.onDelete,
                response: response,
              )),
    ]);

    return streams;
  }
}
