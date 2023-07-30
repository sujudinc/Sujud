// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class UserApi extends AmplifyModelApiAbstract<User> {
  @override
  Future<int> count({QueryPredicate? where}) {
    throw UnimplementedError();
  }

  @override
  Future<User?> create(User item) async {
    final response = await Amplify.API
        .mutate(
          request: ModelMutations.create(item),
        )
        .response;

    return response.data;
  }

  @override
  Future<User?> delete(User item) async {
    final response = await Amplify.API
        .mutate(
          request: ModelMutations.delete(item),
        )
        .response;

    return response.data;
  }

  @override
  Future<PaginatedResult<User>> list({
    QueryPredicate? where,
    int? limit,
    String? nextToken,
  }) async {
    final response = await Amplify.API
        .query(
          request: ModelQueries.list<User>(
            User.classType,
            limit: limit,
            where: where,
          ),
        )
        .response;

    return response.data ??
        const PaginatedResult<User>([], 0, null, null, User.classType, null);
  }

  @override
  Future<User?> read(String id) async {
    final response = await Amplify.API
        .query(
          request: ModelQueries.list(User.classType, where: User.ID.eq(id)),
        )
        .response;

    return response.data != null && response.data!.items.isNotEmpty
        ? response.data!.items.first
        : null;
  }

  @override
  Future<User?> update(User item) async {
    final response = await Amplify.API
        .mutate(
          request: ModelMutations.update(item),
        )
        .response;

    return response.data;
  }
}
