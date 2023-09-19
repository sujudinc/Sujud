import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:sujud/models/models.dart';

abstract class BaseRepoAbstract<T extends Model> {
  List<T> get items;

  Future<(T?, List<GraphQLResponseError>)> get(String id);

  Future<(List<T>?, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<(List<T>?, List<GraphQLResponseError>)> listMore();

  Future<(T?, List<GraphQLResponseError>)> create(
    T item, {
    List<AttributedFile>? images,
  });

  Future<(T?, List<GraphQLResponseError>)> update(
    T item, {
    List<AttributedFile>? images,
  });

  Future<(T?, List<GraphQLResponseError>)> delete(T item);

  void clearCache();
}
