// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/apis/apis.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

abstract class AmplifyModelApiAbstract<T extends Model> {
  factory AmplifyModelApiAbstract() {
    switch (T) {
      case Announcement:
        return AmplifyModelApi(
          GetIt.instance.get<AmplifyApiServiceAbstract<T>>(),
          AnnouncementOperations() as AmplifyModelApiOperations<T>,
        );
      case Mosque:
        return AmplifyModelApi(
          GetIt.instance.get<AmplifyApiServiceAbstract<T>>(),
          MosqueOperations() as AmplifyModelApiOperations<T>,
        );
      case User:
        return AmplifyModelApi(
          GetIt.instance.get<AmplifyApiServiceAbstract<T>>(),
          UserOperations() as AmplifyModelApiOperations<T>,
        );
      default:
        throw Exception('No api exists for the provided model type');
    }
  }

  Future<(T?, List<GraphQLResponseError>)> get(String id);

  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<(T?, List<GraphQLResponseError>)> create(T item);

  Future<(T?, List<GraphQLResponseError>)> update(T item);

  Future<(T?, List<GraphQLResponseError>)> delete(String id);
}
