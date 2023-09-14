// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class UserApi extends AmplifyApiAbstract<User> {
  UserApi() : _api = GetIt.instance.get<AmplifyApiServiceAbstract<User>>();

  final AmplifyApiServiceAbstract<User> _api;

  @override
  Future<User?> create(User item) async {
    final response = await _api.create(item);

    return response;
  }

  @override
  Future<User?> read(String id) async {
    final response = await _api.read(
      User.classType,
      limit: 1,
      where: User.ID.eq(id),
    );

    return response;
  }

  @override
  Future<User?> update(User item) async {
    final response = await _api.update(item);

    return response;
  }

  @override
  Future<User?> delete(User item) async {
    final response = await _api.delete(item);

    return response;
  }

  @override
  Future<PaginatedResult<User>?> list({
    int? limit,
    QueryPredicate? where,
    String? nextToken,
  }) async {
    final response = await _api.list(
      User.classType,
      limit: limit,
      where: where,
      nextToken: nextToken,
    );

    return response;
  }

  @override
  Future<PaginatedResult<User>?> listMore({
    required GraphQLRequest<PaginatedResult<User>> nextRequest,
  }) async {
    final response = await _api.listMore(nextRequest);

    return response;
  }
}
