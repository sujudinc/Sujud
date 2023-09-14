// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MosqueApi extends AmplifyApiAbstract<Mosque> {
  MosqueApi() : _api = GetIt.instance.get<AmplifyApiServiceAbstract<Mosque>>();

  final AmplifyApiServiceAbstract<Mosque> _api;

  @override
  Future<Mosque?> create(Mosque item) async {
    final response = await _api.create(item);

    return response;
  }

  @override
  Future<Mosque?> read(String id) async {
    final response = await _api.read(
      Mosque.classType,
      limit: 1,
      where: User.ID.eq(id),
    );

    return response;
  }

  @override
  Future<Mosque?> update(Mosque item) async {
    final response = await _api.update(item);

    return response;
  }

  @override
  Future<Mosque?> delete(Mosque item) async {
    final response = await _api.delete(item);

    return response;
  }

  @override
  Future<PaginatedResult<Mosque>?> list({
    QueryPredicate<Model>? where,
    int? limit,
    String? nextToken,
  }) async {
    final response = await _api.list(
      Mosque.classType,
      limit: limit,
      where: where,
      nextToken: nextToken,
    );

    return response;
  }

  @override
  Future<PaginatedResult<Mosque>?> listMore({
    required GraphQLRequest<PaginatedResult<Mosque>> nextRequest,
  }) async {
    final response = await _api.listMore(nextRequest);

    return response;
  }
}
