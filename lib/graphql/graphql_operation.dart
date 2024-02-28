enum GetOperation {
  getAnnouncement,
  getBookmark,
  getComment,
  getLike,
  getMosque,
  getUser,
}

enum ListOperation {
  announcementsByMosqueId,
  listAnnouncements,
  listMosques,
  listUsers,
}

enum CreateOperation {
  createAnnouncement,
  createMosque,
}

enum UpdateOperation {
  updateAnnouncement,
  updateMosque,
  updateUser,
}

enum DeleteOperation {
  deleteAnnouncement,
  deleteMosque,
}

enum SubscriptionOperation {
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
