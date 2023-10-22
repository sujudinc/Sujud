const announcementDocument = '''
  id
  title
  body
  images
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
