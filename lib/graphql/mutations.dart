class Mutations {
  static const createMosque = 'createMosque';
  static const createMosqueDocument = '''
    mutation CreateMosque(
      \$input: CreateMosqueInput!
      \$condition: ModelMosqueConditionInput
    ) {
      $createMosque(input: \$input, condition: \$condition) {
        id
        name
        description
        images
        liveVideoUrl
        creatorId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        __typename
      }
    }
  ''';

  static const updateMosque = 'updateMosque';
  static const updateMosqueDocument = '''
    mutation UpdateMosque(
      \$input: UpdateMosqueInput!
      \$condition: ModelMosqueConditionInput
    ) {
      $updateMosque(input: \$input, condition: \$condition) {
        id
        name
        description
        images
        liveVideoUrl
        creatorId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        __typename
      }
    }
  ''';

  static const deleteMosque = 'deleteMosque';
  static const deleteMosqueDocument = '''
    mutation DeleteMosque(
      \$input: DeleteMosqueInput!
      \$condition: ModelMosqueConditionInput
    ) {
      $deleteMosque(input: \$input, condition: \$condition) {
        id
        name
        description
        images
        liveVideoUrl
        creatorId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        __typename
      }
    }
  ''';

  static const createUser = 'createUser';
  static const createUserDocument = '''
    mutation CreateUser(
      \$input: CreateUserInput!
      \$condition: ModelUserConditionInput
    ) {
      \$createUser(input: \$input, condition: \$condition) {
        id
        selfie
        firstName
        lastName
        email
        phone
        type
        status
        stripeCustomerId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        owner
        __typename
      }
    }
  ''';

  static const updateUser = 'updateUser';
  static const updateUserDocument = '''
    mutation UpdateUser(
      \$input: UpdateUserInput!
      \$condition: ModelUserConditionInput
    ) {
      \$updateUser(input: \$input, condition: \$condition) {
        id
        selfie
        firstName
        lastName
        email
        phone
        type
        status
        stripeCustomerId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        owner
        __typename
      }
    }
  ''';

  static const deleteUser = 'deleteUser';
  static const deleteUserDocument = '''
    mutation DeleteUser(
      \$input: DeleteUserInput!
      \$condition: ModelUserConditionInput
    ) {
      \$deleteUser(input: \$input, condition: \$condition) {
        id
        selfie
        firstName
        lastName
        email
        phone
        type
        status
        stripeCustomerId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        owner
        __typename
      }
    }
  ''';
}
