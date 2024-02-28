// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class AnnouncementApiAbstract
    implements
        QueryModelApiAbstract<Announcement>,
        MutationModelApiAbstract<Announcement>,
        SubscriptionModelApiAbstract<Announcement> {
  Future<(GraphQLListResponse<Announcement>, List<GraphQLResponseError>)>
      listByMosqueId({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });
}
