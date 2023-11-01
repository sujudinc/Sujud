// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final getAnnouncement = '''
  query GetAnnouncement(\$id: ID!) {
    ${GetOperations.getAnnouncement.name}(id: \$id) {
      $announcementDocument
    }
  }
''';

final getBookmark = '''
  query GetBookmark(\$id: ID!) {
    ${GetOperations.getBookmark.name}(id: \$id) {
      $bookmarkDocument
    }
  }
''';

final getComment = '''
  query GetComment(\$id: ID!) {
    ${GetOperations.getComment.name}(id: \$id) {
      $commentDocument
    }
  }
''';

final getLike = '''
  query GetLike(\$id: ID!) {
    ${GetOperations.getLike.name}(id: \$id) {
      $likeDocument
    }
  }
''';

final getMosque = '''
  query GetMosque(\$id: ID!) {
    ${GetOperations.getMosque.name}(id: \$id) {
      $mosqueDocument
    }
  }
''';

final getUser = '''
  query GetUser(\$id: ID!) {
    ${GetOperations.getUser.name}(id: \$id) {
      $userDocument
    }
  }
''';

final listAnnouncements = '''
  query ListAnnouncements(
    \$filter: ModelAnnouncementFilterInput
    \$limit: Int
    \$nextToken: String
  ) {
    ${ListOperations.listAnnouncements.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        $announcementDocument
      }
      nextToken
      startedAt
    }
  }
 ''';

final announcementsByMosqueId = '''
  query AnnouncementsByMosqueId(
    \$creatorId: ID!
    \$mosqueId: ID!
    \$sortDirection: ModelSortDirection
    \$filter: ModelAnnouncementFilterInput
    \$limit: Int
    \$nextToken: String
  ) {
    ${ListOperations.announcementsByMosqueId.name}(
      mosqueId: \$mosqueId
      sortDirection: \$sortDirection
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        $announcementDocument
      }
      nextToken
      startedAt
    }
  }
''';

final listMosques = '''
  query ListMosques(
    \$filter: ModelMosqueFilterInput
    \$limit: Int
    \$nextToken: String
  ) {
    ${ListOperations.listMosques.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        $mosqueDocument
      }
      nextToken
      startedAt
    }
  }
 ''';

final listUsers = '''
  query ListUsers(
    \$filter: ModelUserFilterInput
    \$limit: Int
    \$nextToken: String
  ) {
    ${ListOperations.listUsers.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        $userDocument
      }
      nextToken
      startedAt
    }
  }
 ''';
