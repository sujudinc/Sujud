import 'package:sujud/graphql/documents.dart';

class Queries {
  static const getUser = 'getUser';
  static const getUserQuery = '''
  query GetUser(\$id: ID!) {
    $getUser(id: \$id) {
      ${GqlDocuments.userDocument}
    }
  }
''';
  static const listUsers = 'listUsers';
  static const listUsersQuery = '''
    query ListUsers(
      \$filter: ModelUserFilterInput
      \$limit: Int
      \$nextToken: String
    ) {
      $listUsers(filter: \$filter, limit: \$limit, nextToken: \$nextToken) {
        items {
          ${GqlDocuments.userDocument}
        }
        nextToken
        startedAt
        __typename
      }
    }
  ''';

  static const getMosque = 'getMosque';
  static const getMosqueQuery = '''
  query GetMosque(\$id: ID!) {
    $getMosque(id: \$id) {
      ${GqlDocuments.mosqueDocument}
    }
  }
''';
  static const listMosques = 'listMosques';
  static const listMosquesQuery = '''
    query ListMosques(
      \$filter: ModelMosqueFilterInput
      \$limit: Int
      \$nextToken: String
    ) {
      $listMosques(filter: \$filter, limit: \$limit, nextToken: \$nextToken) {
        items {
          ${GqlDocuments.mosqueDocument}
        }
        nextToken
        startedAt
        __typename
      }
    }
  ''';
}
