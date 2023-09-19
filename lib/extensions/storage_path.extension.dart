import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

extension StoragePathX on StoragePath {
  String path(Model item) {
    switch (this) {
      case StoragePath.user:
        final user = item as User;
        return 'users/${user.id}/selfie/';
      case StoragePath.mosque:
        final mosque = item as Mosque;
        return 'mosques/${mosque.id}/profile/';
      case StoragePath.announcement:
        final announcement = item as Announcement;
        return 'mosques/${announcement.mosque.id}/'
            'announcements/${announcement.id}/';
    }
  }
}
