// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final onCreateAnnouncement = '''
  subscription OnCreateAnnouncement(
    \$creatorId: ID!
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperations.onCreateAnnouncement.name}(
      filter: \$filter
    ) {
      $announcementDocument
    }
  }
''';

final onUpdateAnnouncement = '''
  subscription OnUpdateAnnouncement(
    \$creatorId: ID!
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperations.onUpdateAnnouncement.name}(
      filter: \$filter
    ) {
      $announcementDocument
    }
  }
''';

final onDeleteAnnouncement = '''
  subscription OnDeleteAnnouncement(
    \$creatorId: ID!
    \$filter: ModelSubscriptionAnnouncementFilterInput
  ) {
    ${SubscriptionOperations.onDeleteAnnouncement.name}(
      filter: \$filter
    ) {
      $announcementDocument
    }
  }
''';

final onCreateMosque = '''
  subscription OnCreateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperations.onCreateMosque.name}(
      filter: \$filter
    ) {
      $mosqueDocument
    }
  }
''';

final onUpdateMosque = '''
  subscription OnUpdateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperations.onUpdateMosque.name}(
      filter: \$filter
    ) {
      $mosqueDocument
    }
  }
''';

final onDeleteMosque = '''
  subscription OnDeleteMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
  ) {
    ${SubscriptionOperations.onDeleteMosque.name}(
      filter: \$filter,
    ) {
      $mosqueDocument
    }
  }
''';

final onCreateUser = '''
  subscription OnCreateUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperations.onCreateUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
      $userDocument
    }
  }
''';

final onUpdateUser = '''
  subscription OnUpdateUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperations.onUpdateUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
      $userDocument
    }
  }
''';

final onDeleteUser = '''
  subscription OnDeleteUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    ${SubscriptionOperations.onDeleteUser.name}(
      filter: \$filter,
      owner: \$owner
    ) {
      $userDocument
    }
  }
''';
