import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

abstract class AnnouncementOperationAbstract
    implements
        GraphqlQueryOperationsAbstract<Announcement>,
        GraphqlMutationOperationsAbstract<Announcement>,
        GraphqlSubscriptionOperationAbstract<Announcement> {
  ListOperation get listByMosqueId;
}
