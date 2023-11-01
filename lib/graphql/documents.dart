const announcementDocument = '''
  id
  title
  body
  images
  bookmarks(
    filter: {
      creatorId: {eq: \$creatorId},
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
  comments(sortDirection: ASC) {
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
  creator {
    $userDocument
  }
  mosqueId
  mosque {
    $mosqueDocument
  }
  createdAt
  updatedAt
''';
const bookmarkDocument = '''
  id
  announcementId
  announcement {
    $announcementDocument
  }
  creatorId
  creator {
    $userDocument
  }
  mosqueId
  mosque {
    $mosqueDocument
  }
  createdAt
  updatedAt
''';
const commentDocument = '''
  id
  text
  parentCommentId
  subComments(sortDirection: ASC) {
    items {
      id
      text
      parentCommentId
      creatorId
      creator {
        $userDocument
      }
      announcementId
      announcement {
        $announcementDocument
      }
      mosqueId
      mosque {
        $mosqueDocument
      }
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  announcementId
  announcement {
    $announcementDocument
  }
  creatorId
  creator {
    $userDocument
  }
  mosqueId
  mosque {
    $mosqueDocument
  }
  createdAt
  updatedAt
''';
const likeDocument = '''
  id
  announcementId
  announcement {
    $announcementDocument
  }
  creatorId
  creator {
    $userDocument
  }
  mosqueId
  mosque {
    $mosqueDocument
  }
  createdAt
  updatedAt
''';
const mosqueDocument = '''
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
  creator {
    $userDocument
  }
  createdAt
  updatedAt
  ''';
const userDocument = '''
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
