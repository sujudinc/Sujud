enum GetOperations {
  getAnnouncement,
  getMosque,
  getUser,
}

enum ListOperations {
  listAnnouncements,
  listMosques,
  listUsers,
}

enum CreateOperations {
  createAnnouncement,
  createMosque,
  createUser,
}

enum UpdateOperations {
  updateAnnouncement,
  updateMosque,
  updateUser,
}

enum DeleteOperations {
  deleteAnnouncement,
  deleteMosque,
  deleteUser,
}

enum SubscriptionOperations {
  onCreateAnnouncement,
  onUpdateAnnouncement,
  onDeleteAnnouncement,
  onCreateMosque,
  onUpdateMosque,
  onDeleteMosque,
  onCreateUser,
  onUpdateUser,
  onDeleteUser,
}
