// 📦 Package imports:
import 'dart:convert';

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
    required GetOperations operation,
    required String id,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.query,
            variables: <String, dynamic>{
              'id': id,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    required ModelType<T> modelType,
    required ListOperations operation,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<String>(
            document: operation.query,
            variables: <String, dynamic>{
              if (filter != null) 'filter': filter,
              if (limit != null) 'limit': limit,
              if (nextToken != null) 'nextToken': nextToken,
            },
          ),
        )
        .response;

    final data =
        jsonDecode(response.data!)[operation.name] as Map<String, dynamic>;

    return (
      GraphQLListResponse<T>(
        items: (data['items'] as List<dynamic>)
            .map((item) => modelType.fromJson(item))
            .toList(),
        nextToken: data['nextToken'] as String?,
        startedAt: data['startedAt'] as int?,
      ),
      response.errors,
    );
  }

  @override
  Future<GraphQLResponse<T>> create({
    required ModelType<T> modelType,
    required CreateOperations operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.query,
            variables: <String, dynamic>{
              'input': input,
              if (condition != null) 'condition': condition,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<GraphQLResponse<T>> update({
    required ModelType<T> modelType,
    required UpdateOperations operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.query,
            variables: <String, dynamic>{
              'input': input,
              if (condition != null) 'condition': condition,
            },
          ),
        )
        .response;

    return response;
  }

  @override
  Future<GraphQLResponse<T>> delete({
    required ModelType<T> modelType,
    required DeleteOperations operation,
    required String id,
    Map<String, dynamic>? condition,
  }) async {
    final response = await _amplifyApi
        .query(
          request: GraphQLRequest<T>(
            modelType: modelType,
            decodePath: operation.name,
            document: operation.query,
            variables: <String, dynamic>{
              'input': <String, dynamic>{
                'id': id,
              },
              if (condition != null) 'condition': condition,
            },
          ),
        )
        .response;

    return response;
  }
}
