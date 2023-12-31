// 🌎 Project imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:sujud/abstracts/repos/base.repo.abstract.dart';
import 'package:sujud/models/models.dart';

abstract class AnnouncementRepoAbstract
    implements BaseRepoAbstract<Announcement> {
  Future<(List<Announcement>?, List<GraphQLResponseError>)> listByMosqueId({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });
}
