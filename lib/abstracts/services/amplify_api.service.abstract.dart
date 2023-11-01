// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

abstract class AmplifyApiServiceAbstract<T extends Model> {
  Future<GraphQLResponse<T>> get({
    required ModelType<T> modelType,
    required GetOperations operation,
    required String id,
    Map<String, dynamic>? variables,
  });

  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    required ModelType<T> modelType,
    required ListOperations operation,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<GraphQLResponse<T>> create({
    required ModelType<T> modelType,
    required CreateOperations operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<GraphQLResponse<T>> update({
    required ModelType<T> modelType,
    required UpdateOperations operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<GraphQLResponse<T>> delete({
    required ModelType<T> modelType,
    required DeleteOperations operation,
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Stream<GraphQLResponse<T>> subscribe({
    required ModelType<T> modelType,
    required SubscriptionOperations operation,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  });
}

class GraphQLListResponse<T extends Model> {
  GraphQLListResponse({
    this.items,
    this.nextToken,
  });

  final List<T?>? items;
  final String? nextToken;
}
