import 'package:sujud/graphql/documents.dart';

class Subscriptions {
  static const onUpdateUser = 'onUpdateUser';
  static const onUpdateUserDocument = '''
  subscription OnUpdateUser(
    \$filter: ModelSubscriptionUserFilterInput
    \$owner: String
  ) {
    $onUpdateUser(filter: \$filter, owner: \$owner) {
      ${GqlDocuments.userDocument}
    }
  }
''';

  static const onUpdateMosque = 'onUpdateMosque';
  static const onUpdateMosqueDocument = '''
  subscription OnUpdateMosque(
    \$filter: ModelSubscriptionMosqueFilterInput
    \$creatorId: String
  ) {
    $onUpdateMosque(filter: \$filter, creatorId: \$creatorId) {
      ${GqlDocuments.mosqueDocument}
    }
  }
''';
}
