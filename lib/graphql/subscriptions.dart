// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final onCreateAnnouncement = '''
  subscription OnCreateAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onCreateAnnouncement.name}(
      filter: \$filter,
      creatorId: \$creatorId
    ) {
      $announcementDocument
    }
  }
''';

final onUpdateAnnouncement = '''
  subscription OnUpdateAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onUpdateAnnouncement.name}(
      filter: \$filter,
      creatorId: \$creatorId
    ) {
      $announcementDocument
    }
  }
''';

final onDeleteAnnouncement = '''
  subscription OnDeleteAnnouncement(
    \$filter: ModelSubscriptionAnnouncementFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onDeleteAnnouncement.name}(
      filter: \$filter,
      creatorId: \$creatorId
    ) {
      $announcementDocument
    }
  }
''';

final onCreateMosque = '''
  subscription OnCreateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onCreateMosque.name}(
      filter: \$filter,
      creatorId: \$creatorId
    ) {
      $mosqueDocument
    }
  }
''';

final onUpdateMosque = '''
  subscription OnUpdateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onUpdateMosque.name}(
      filter: \$filter,
      creatorId: \$creatorId
    ) {
      $mosqueDocument
    }
  }
''';

final onDeleteMosque = '''
  subscription OnDeleteMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
    \$creatorId: String
  ) {
    ${SubscriptionOperations.onDeleteMosque.name}(
      filter: \$filter,
      creatorId: \$creatorId
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
