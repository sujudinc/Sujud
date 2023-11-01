enum GetOperations {
  getAnnouncement,
  getBookmark,
  getComment,
  getLike,
  getMosque,
  getUser,
}

enum ListOperations {
  announcementsByMosqueId,
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
