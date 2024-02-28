String announcementDocument({
  bool includeCreator = false,
  bool includeMosque = false,
}) {
  var doc = '''
    id
    title
    body
    images
    bookmarks(
      filter: {
        creatorId: {eq: \$creatorId},
        _deleted: {ne: true}
      }
    ) {
      items {
        id
        announcementId
        creatorId
        mosqueId
        createdAt
        updatedAt
      }
      nextToken
      startedAt
    }
    likes(
      filter: {
        creatorId: {eq: \$creatorId},
        _deleted: {ne: true}
      }
    ) {
      items {
        id
        announcementId
        creatorId
        mosqueId
        createdAt
        updatedAt
      }
      nextToken
      startedAt
    }
    comments(
      sortDirection: ASC,
      filter: {
        _deleted: {ne: true}
      }
    ) {
      items {
        id
        text
        parentCommentId
        announcementId
        creatorId
        mosqueId
        createdAt
        updatedAt
      }
      nextToken
      startedAt
    }
    creatorId
    mosqueId
    createdAt
    updatedAt
  ''';

  if (includeCreator) {
    doc += '''
      creator {
        ${userDocument()}
      }
    ''';
  }

  if (includeMosque) {
    doc += '''
      mosque {
        ${mosqueDocument()}
      }
    ''';
  }

  return doc;
}

String bookmarkDocument({
  bool includeAnnouncement = false,
  bool includeCreator = false,
  bool includeMosque = false,
}) {
  var doc = '''
    id
    announcementId
    creatorId
    mosqueId
    createdAt
    updatedAt
  ''';

  if (includeAnnouncement) {
    doc += '''
      announcement {
        ${announcementDocument()}
      }
    ''';
  }

  if (includeCreator) {
    doc += '''
      creator {
        ${userDocument()}
      }
    ''';
  }

  if (includeMosque) {
    doc += '''
      mosque {
        ${mosqueDocument()}
      }
    ''';
  }

  return doc;
}

String commentDocument({
  bool includeCreator = false,
  bool includeAnnouncement = false,
  bool includeMosque = false,
}) {
  var doc = '''
    id
    text
    parentCommentId
    subComments(
      sortDirection: ASC,
      filter: {
        _deleted: {ne: true}
      }
    ) {
      items {
        ${commentDocument(
    includeCreator: true,
  )}
      }
      nextToken
      startedAt
    }
    announcementId
    creatorId
    mosqueId
    createdAt
    updatedAt
  ''';

  if (includeCreator) {
    doc += '''
      creator {
        ${userDocument()}
      }
    ''';
  }

  if (includeAnnouncement) {
    doc += '''
      announcement {
        ${announcementDocument()}
      }
    ''';
  }

  if (includeMosque) {
    doc += '''
      mosque {
        ${mosqueDocument()}
      }
    ''';
  }

  return doc;
}

String likeDocument({
  bool includeAnnouncement = false,
  bool includeCreator = false,
  bool includeMosque = false,
}) {
  var doc = '''
    id
    announcementId
    creatorId
    mosqueId
    createdAt
    updatedAt
  ''';

  if (includeAnnouncement) {
    doc += '''
      announcement {
        ${announcementDocument()}
      }
    ''';
  }

  if (includeCreator) {
    doc += '''
      creator {
        ${userDocument()}
      }
    ''';
  }

  if (includeMosque) {
    doc += '''
      mosque {
        ${mosqueDocument()}
      }
    ''';
  }

  return doc;
}

String mosqueDocument({
  bool includeCreator = false,
}) {
  var doc = '''
    id
    name
    description
    images
    address {
      addressLine1
      addressLine2
      addressLine3
      city
      province
      postalCode
      country
      latitude
      longitude
    }
    hours {
      monday {
        type
        operatingHours {
          open
          close
        }
      }
      tuesday {
        type
        operatingHours {
          open
          close
        }
      }
      wednesday {
        type
        operatingHours {
          open
          close
        }
      }
      thursday {
        type
        operatingHours {
          open
          close
        }
      }
      friday {
        type
        operatingHours {
          open
          close
        }
      }
      saturday {
        type
        operatingHours {
          open
          close
        }
      }
      sunday {
        type
        operatingHours {
          open
          close
        }
      }
    }
    contactInfo {
      phone
      email
      website
      socialMedia {
        facebook
        instagram
        twitter
        youtube
      }
    }
    liveVideoUrl
    creatorId
    createdAt
    updatedAt
  ''';

  if (includeCreator) {
    doc += '''
      creator {
        ${userDocument()}
      }
    ''';
  }

  return doc;
}

String userDocument({
  bool includeCreatedAnnouncements = false,
  bool includeCreatedMosques = false,
  bool includeMosques = false,
  bool includeBookmarks = false,
  bool includeComments = false,
  bool includeLikes = false,
}) {
  var doc = '''
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
  ''';

  if (includeCreatedAnnouncements) {
    doc += '''
      createdAnnouncements(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${announcementDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  if (includeCreatedMosques) {
    doc += '''
      createdMosques(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${mosqueDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  if (includeMosques) {
    doc += '''
      mosques(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${mosqueDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  if (includeBookmarks) {
    doc += '''
      bookmarks(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${bookmarkDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  if (includeComments) {
    doc += '''
      comments(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${commentDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  if (includeLikes) {
    doc += '''
      likes(
        filter: {
          _deleted: {ne: true}
        }
      ) {
        item {
          ${likeDocument()}
        }
        nextToken
        startedAt
      }
    ''';
  }

  return doc;
}
