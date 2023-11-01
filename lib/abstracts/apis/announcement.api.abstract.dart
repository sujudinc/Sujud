// 🌎 Project imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class AnnouncementApiAbstract
    implements ModelApiAbstract<Announcement> {
  Future<(GraphQLListResponse<Announcement>?, List<GraphQLResponseError>)>
      listByMosqueId({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });
}
