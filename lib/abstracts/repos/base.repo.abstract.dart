// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

abstract class BaseRepoAbstract<T extends Model> {
  void dispose();
}

abstract class QueryRepoAbstract<T extends Model> {
  List<T> get items;

  Future<(T?, List<GraphQLResponseError>)> get({
    required String id,
  });

  Future<(List<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<(List<T>, List<GraphQLResponseError>)> listMore();

  void clearCache();
}

abstract class CreateRepoAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> create(
    T item, {
    List<AttributedFile>? images,
  });
}

abstract class UpdateRepoAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> update(
    T item, {
    List<AttributedFile>? images,
  });
}

abstract class DeleteRepoAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> delete({
    required T item,
  });
}

abstract class SubscriptionRepoAbstract<T extends Model> {
  void subscribe({
    Function((T?, List<GraphQLResponseError>) response)? onCreated,
    Function((T?, List<GraphQLResponseError>) response)? onUpdated,
    Function((T?, List<GraphQLResponseError>) response)? onDeleted,
  });
}
