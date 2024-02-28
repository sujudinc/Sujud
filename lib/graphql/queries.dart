// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final getAnnouncement = '''
  query GetAnnouncement(\$id: ID!) {
    ${GetOperation.getAnnouncement.name}(id: \$id) {
      ${announcementDocument()}
    }
  }
''';

final getBookmark = '''
  query GetBookmark(\$id: ID!) {
    ${GetOperation.getBookmark.name}(id: \$id) {
      ${bookmarkDocument()}
    }
  }
''';

final getComment = '''
  query GetComment(\$id: ID!) {
    ${GetOperation.getComment.name}(id: \$id) {
      ${commentDocument()}
    }
  }
''';

final getLike = '''
  query GetLike(\$id: ID!) {
    ${GetOperation.getLike.name}(id: \$id) {
      ${likeDocument()}
    }
  }
''';

final getMosque = '''
  query GetMosque(\$id: ID!) {
    ${GetOperation.getMosque.name}(id: \$id) {
      ${mosqueDocument()}
    }
  }
''';

final getUser = '''
  query GetUser(\$id: ID!) {
    ${GetOperation.getUser.name}(id: \$id) {
      ${userDocument()}
    }
  }
''';

final listAnnouncements = '''
  query ListAnnouncements(
    \$filter: ModelAnnouncementFilterInput
    \$limit: Int
    \$nextToken: String
  ) {
    ${ListOperation.listAnnouncements.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        ${announcementDocument()}
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
    ${ListOperation.announcementsByMosqueId.name}(
      mosqueId: \$mosqueId
      sortDirection: \$sortDirection
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        ${announcementDocument(
  includeCreator: true,
)}
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
    ${ListOperation.listMosques.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        ${mosqueDocument(
  includeCreator: true,
)}
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
    ${ListOperation.listUsers.name}(
      filter: \$filter
      limit: \$limit
      nextToken: \$nextToken
    ) {
      items {
        ${userDocument()}
      }
      nextToken
      startedAt
    }
  }
 ''';
