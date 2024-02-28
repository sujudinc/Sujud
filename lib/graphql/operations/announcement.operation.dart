// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class AnnouncementOperation implements AnnouncementOperationAbstract {
  @override
  ModelType<Announcement> get modelType => Announcement.classType;

  @override
  GetOperation get get => GetOperation.getAnnouncement;

  @override
  ListOperation get list => ListOperation.listAnnouncements;

  @override
  ListOperation get listByMosqueId => ListOperation.announcementsByMosqueId;

  @override
  CreateOperation get create => CreateOperation.createAnnouncement;

  @override
  UpdateOperation get update => UpdateOperation.updateAnnouncement;

  @override
  DeleteOperation get delete => DeleteOperation.deleteAnnouncement;

  @override
  SubscriptionOperation get onCreate =>
      SubscriptionOperation.onCreateAnnouncement;

  @override
  SubscriptionOperation get onUpdate =>
      SubscriptionOperation.onUpdateAnnouncement;

  @override
  SubscriptionOperation get onDelete =>
      SubscriptionOperation.onDeleteAnnouncement;
}
