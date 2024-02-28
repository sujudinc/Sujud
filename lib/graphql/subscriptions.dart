// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final onCreateAnnouncement = '''
  subscription OnCreateAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperation.onCreateAnnouncement.name}(
      filter: \$filter
    ) {
       ${announcementDocument(
  includeCreator: true,
  includeMosque: true,
)}
    }
  }
''';

final onUpdateAnnouncement = '''
  subscription OnUpdateAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperation.onUpdateAnnouncement.name}(
      filter: \$filter
    ) {
      ${announcementDocument(
  includeCreator: true,
  includeMosque: true,
)}
    }
  }
''';

final onDeleteAnnouncement = '''
  subscription OnDeleteAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperation.onDeleteAnnouncement.name}(
      filter: \$filter
    ) {
      ${announcementDocument(
  includeCreator: true,
  includeMosque: true,
)}
    }
  }
''';

final onCreateMosque = '''
  subscription OnCreateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperation.onCreateMosque.name}(
      filter: \$filter
    ) {
     ${mosqueDocument(
  includeCreator: true,
)}
    }
  }
''';

final onUpdateMosque = '''
  subscription OnUpdateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperation.onUpdateMosque.name}(
      filter: \$filter
    ) {
      ${mosqueDocument(
  includeCreator: true,
)}
    }
  }
''';

final onDeleteMosque = '''
  subscription OnDeleteMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperation.onDeleteMosque.name}(
      filter: \$filter,
    ) {
      ${mosqueDocument(
  includeCreator: true,
)}
    }
  }
''';

final onCreateUser = '''
  subscription OnCreateUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperation.onCreateUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
      ${userDocument()}
    }
  }
''';

final onUpdateUser = '''
  subscription OnUpdateUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperation.onUpdateUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
     ${userDocument()}
    }
  }
''';

final onDeleteUser = '''
  subscription OnDeleteUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperation.onDeleteUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
      ${userDocument()}
    }
  }
''';
