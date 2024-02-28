// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/graphql/graphql.dart';

class AmplifyApiService<T extends Model>
    implements AmplifyApiServiceAbstract<T> {
  AmplifyApiService({APICategory? amplifyApi})
      : _amplifyApi = amplifyApi ?? Amplify.API;

  final APICategory _amplifyApi;

  @override
  Future<GraphQLResponse<T>> get({
    required ModelType<T> modelType,
    required GetOperation operation,
    required String id,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<T>(
            authorizationMode: authorizationMode,
            modelType: modelType,
            decodePath: operation.name,
            document: operation.query,
            variables: <String, dynamic>{
              'id': id,
              if (variables != null)
                for (final entry in variables.entries) entry.key: entry.value,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    required ModelType<T> modelType,
    required ListOperation operation,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final response = await Amplify.API
        .query(
          request: GraphQLRequest<PaginatedResult<T>>(
            authorizationMode: authorizationMode,
            modelType: PaginatedModelType(modelType),
            document: operation.query,
            decodePath: operation.name,
            variables: <String, dynamic>{
              if (variables != null)
                for (final entry in variables.entries) entry.key: entry.value,
              if (filter != null) 'filter': filter,
              if (limit != null) 'limit': limit,
              if (nextToken != null) 'nextToken': nextToken,
            },
          ),
        )
        .response;

    return (
      GraphQLListResponse<T>(
        items: response.data?.items,
        nextToken: response.data?.nextToken,
      ),
      response.errors,
    );
  }

  @override
  Future<GraphQLResponse<T>> create({
    required ModelType<T> modelType,
    required CreateOperation operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApi
        .mutate(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.mutation,
            variables: <String, dynamic>{
              'input': input,
              if (condition != null) 'condition': condition,
              if (variables != null)
                for (final entry in variables.entries) entry.key: entry.value,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<GraphQLResponse<T>> update({
    required ModelType<T> modelType,
    required UpdateOperation operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApi
        .mutate(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.mutation,
            variables: <String, dynamic>{
              'input': input,
              if (condition != null) 'condition': condition,
              if (variables != null)
                for (final entry in variables.entries) entry.key: entry.value,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<GraphQLResponse<T>> delete({
    required ModelType<T> modelType,
    required DeleteOperation operation,
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApi
        .mutate(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.mutation,
            variables: <String, dynamic>{
              'input': <String, dynamic>{
                'id': id,
              },
              if (condition != null) 'condition': condition,
              if (variables != null)
                for (final entry in variables.entries) entry.key: entry.value,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Stream<GraphQLResponse<T>> subscribe({
    required ModelType<T> modelType,
    required SubscriptionOperation operation,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  }) {
    final stream = _amplifyApi.subscribe(
      GraphQLRequest<T>(
        modelType: modelType,
        decodePath: operation.name,
        document: operation.subscription,
        variables: <String, dynamic>{
          if (variables != null)
            for (final entry in variables.entries) entry.key: entry.value,
          if (filter != null) 'filter': filter,
          if (creatorId != null) 'creatorId': creatorId,
          if (owner != null) 'owner': owner,
        },
      ),
    );

    return stream;
  }
}
