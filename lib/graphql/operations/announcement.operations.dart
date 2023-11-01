// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class AnnouncementOperations
    implements
        GraphqlQueryOperations<Announcement>,
        GraphqlMutationOperations<Announcement>,
        GraphqlSubscriptionOperations<Announcement> {
  @override
  ModelType<Announcement> get modelType => Announcement.classType;

  @override
  GetOperations get get => GetOperations.getAnnouncement;

  @override
  ListOperations get list => ListOperations.listAnnouncements;

  @override
  CreateOperations get create => CreateOperations.createAnnouncement;

  @override
  UpdateOperations get update => UpdateOperations.updateAnnouncement;

  @override
  DeleteOperations get delete => DeleteOperations.deleteAnnouncement;

  @override
  SubscriptionOperations get onCreate =>
      SubscriptionOperations.onCreateAnnouncement;

  @override
  SubscriptionOperations get onUpdate =>
      SubscriptionOperations.onUpdateAnnouncement;

  @override
  SubscriptionOperations get onDelete =>
      SubscriptionOperations.onDeleteAnnouncement;

  ListOperations get listByMosqueId => ListOperations.announcementsByMosqueId;
}
