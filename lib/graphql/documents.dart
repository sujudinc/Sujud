const announcementDocument = '''
  id
  title
  body
  images
  creatorId
  creator {
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
    owner
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
    id
    selfie
    firstName
    lastName
    email
    phone
    type
    status
  }
  announcements {
    items {
      id
      title
      body
      images
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  classes {
    items {
      id
      title
      description
      startDateTime
      endDateTime
      recurring
      daysOfWeek
      creatorId
      instructorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  committees {
    items {
      id
      title
      description
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  gatherings {
    items {
      id
      title
      description
      type
      startDate
      endDate
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  fundraisingCampaigns {
    items {
      id
      title
      description
      featureImage
      type
      currentAmount
      goal
      goalDate
      currency
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  monthlyPrayerSchedules {
    items {
      id
      year
      month
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  resources {
    items {
      id
      title
      description
      type
      url
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  services {
    items {
      id
      type
      description
      documents
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  subscriptions {
    items {
      id
      status
      startDate
      endDate
      stripeSubscriptionId
      purchaserId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  volunteerTasks {
    items {
      id
      name
      description
      startDate
      endDate
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
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
  createdAnnouncements {
    items {
      id
      title
      body
      images
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdClasses {
    items {
      id
      title
      description
      startDateTime
      endDateTime
      recurring
      daysOfWeek
      creatorId
      instructorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdCommittees {
    items {
      id
      title
      description
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdGatherings {
    items {
      id
      title
      description
      type
      startDate
      endDate
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdFundraisingCampaigns {
    items {
      id
      title
      description
      featureImage
      type
      currentAmount
      goal
      goalDate
      currency
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdMonthlyPrayerSchedules {
    items {
      id
      year
      month
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdMosques {
    items {
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
      liveVideoUrl
      creatorId
      createdAt
      updatedAt
      _version
      _deleted
      _lastChangedAt
      __typename
    }
    nextToken
    startedAt
  }
  createdResources {
    items {
      id
      title
      description
      type
      url
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdServices {
    items {
      id
      type
      description
      documents
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  createdVolunteerTasks {
    items {
      id
      name
      description
      startDate
      endDate
      creatorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  donations {
    items {
      id
      amount
      currency
      isAnonymous
      donorId
      fundraisingCampaignId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  committees {
    items {
      id
      committeeId
      userId
      createdAt
      updatedAt
      creatorId
      owner
    }
    nextToken
    startedAt
  }
  gatherings {
    items {
      id
      gatheringId
      userId
      createdAt
      updatedAt
      creatorId
      owner
    }
    nextToken
    startedAt
  }
  instructingClasses {
    items {
      id
      title
      description
      startDateTime
      endDateTime
      recurring
      daysOfWeek
      creatorId
      instructorId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  mosques {
    items {
      id
      mosqueId
      mosque {
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
        liveVideoUrl
        creatorId
        createdAt
        updatedAt
        _version
        _deleted
        _lastChangedAt
        __typename
      }
      userId
      createdAt
      updatedAt
      creatorId
      owner
    }
    nextToken
    startedAt
  }
  purchasedSubscriptions {
    items {
      id
      status
      startDate
      endDate
      stripeSubscriptionId
      purchaserId
      mosqueId
      createdAt
      updatedAt
    }
    nextToken
    startedAt
  }
  volunteerTasks {
    items {
      id
      userId
      volunteerTaskId
      createdAt
      updatedAt
      owner
      creatorId
    }
    nextToken
    startedAt
  }
  createdAt
  updatedAt
  owner
  ''';
