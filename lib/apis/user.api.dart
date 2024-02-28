// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class UserApi implements UserApiAbstract {
  UserApi()
      : _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<User>>(),
        _operation = GetIt.instance.get<UserOperationAbstract>();

  final AmplifyApiServiceAbstract<User> _amplifyApiService;
  final UserOperationAbstract _operation;

  @override
  Future<(User?, List<GraphQLResponseError>)> get({
    required String id,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.get(
      modelType: _operation.modelType,
      operation: _operation.get,
      authorizationMode: authorizationMode,
      id: id,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(GraphQLListResponse<User>, List<GraphQLResponseError>)> list({
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? inputs,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final (data, errors) = await _amplifyApiService.list(
      modelType: _operation.modelType,
      operation: _operation.list,
      authorizationMode: authorizationMode,
      variables: inputs,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (data, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> update({
    required User item,
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
  Stream<SubscriptionResponse<User>> subscribe({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  }) {
    final streams = StreamGroup.merge<SubscriptionResponse<User>>([
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onCreate,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<User>(
                type: SubscriptionType.onCreate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onUpdate,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<User>(
                type: SubscriptionType.onUpdate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operation.modelType,
            operation: _operation.onDelete,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => SubscriptionResponse<User>(
                type: SubscriptionType.onDelete,
                response: response,
              )),
    ]);

    return streams;
  }
}
