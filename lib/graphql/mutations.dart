// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final createAnnouncement = '''
  mutation CreateAnnouncement(
    \$creatorId: ID!
    \$input: CreateAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${CreateOperation.createAnnouncement.name}(
      input: \$input
      condition: \$condition
    ) {
      ${announcementDocument()}
    }
  }
''';

final updateAnnouncement = '''
  mutation UpdateAnnouncement(
    \$creatorId: ID!
    \$input: UpdateAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${UpdateOperation.updateAnnouncement.name}(
      input: \$input
      condition: \$condition
    ) {
      ${announcementDocument()}
    }
  }
''';

final deleteAnnouncement = '''
  mutation DeleteAnnouncement(
    \$creatorId: ID!
    \$input: DeleteAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${DeleteOperation.deleteAnnouncement.name}(
      input: \$input
      condition: \$condition
    ) {
      ${announcementDocument()}
    }
  }
''';

final createMosque = '''
  mutation CreateMosque(
    \$input: CreateMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${CreateOperation.createMosque.name}(
      input: \$input
      condition: \$condition
    ) {
      ${mosqueDocument()}
    }
  }
''';

final updateMosque = '''
  mutation UpdateMosque(
    \$input: UpdateMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${UpdateOperation.updateMosque.name}(
      input: \$input
      condition: \$condition
    ) {
      ${mosqueDocument()}
    }
  }
''';

final deleteMosque = '''
  mutation DeleteMosque(
    \$input: DeleteMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${DeleteOperation.deleteMosque.name}(
      input: \$input
      condition: \$condition
    ) {
      ${mosqueDocument()}
    }
  }
''';

final updateUser = '''
  mutation UpdateUser(
    \$input: UpdateUserInput!
    \$condition: ModelUserConditionInput
  ) {
    ${UpdateOperation.updateUser.name}(
      input: \$input
      condition: \$condition
    ) {
      ${userDocument()}
    }
  }
''';
