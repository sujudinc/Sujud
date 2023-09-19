// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

final createAnnouncement = '''
  mutation CreateAnnouncement(
    \$input: CreateAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${CreateOperations.createAnnouncement.name}(
      input: \$input,
      condition: \$condition
    ) {
      $announcementDocument
    }
  }
''';

final updateAnnouncement = '''
  mutation UpdateAnnouncement(
    \$input: UpdateAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${UpdateOperations.updateAnnouncement.name}(
      input: \$input,
      condition: \$condition
    ) {
      $announcementDocument
    }
  }
''';

final deleteAnnouncement = '''
  mutation DeleteAnnouncement(
    \$input: DeleteAnnouncementInput!
    \$condition: ModelAnnouncementConditionInput
  ) {
    ${DeleteOperations.deleteAnnouncement.name}(
      input: \$input,
      condition: \$condition
    ) {
      $announcementDocument
    }
  }
''';

final createMosque = '''
  mutation CreateMosque(
    \$input: CreateMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${CreateOperations.createMosque.name}(
      input: \$input,
      condition: \$condition
    ) {
      $mosqueDocument
    }
  }
''';

final updateMosque = '''
  mutation UpdateMosque(
    \$input: UpdateMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${UpdateOperations.updateMosque.name}(
      input: \$input,
      condition: \$condition
    ) {
      $mosqueDocument
    }
  }
''';

final deleteMosque = '''
  mutation DeleteMosque(
    \$input: DeleteMosqueInput!
    \$condition: ModelMosqueConditionInput
  ) {
    ${DeleteOperations.deleteMosque.name}(
      input: \$input,
      condition: \$condition
    ) {
      $mosqueDocument
    }
  }
''';

final createUser = '''
  mutation CreateUser(
    \$input: CreateUserInput!
    \$condition: ModelUserConditionInput
  ) {
    ${CreateOperations.createUser.name}(
      input: \$input,
      condition: \$condition
     ) {
      $userDocument
    }
  }
''';

final updateUser = '''
  mutation UpdateUser(
    \$input: UpdateUserInput!
    \$condition: ModelUserConditionInput
  ) {
    ${UpdateOperations.updateUser.name}(
      input: \$input,
      condition: \$condition
    ) {
      $userDocument
    }
  }
''';

final deleteUser = '''
  mutation DeleteUser(
    \$input: DeleteUserInput!
    \$condition: ModelUserConditionInput
  ) {
    ${DeleteOperations.deleteUser.name}(
      input: \$input,
      condition: \$condition
    ) {
      $userDocument
    }
  }
''';
