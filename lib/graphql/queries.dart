class Queries {
  static const getUser = 'getUser';
  static const getUserDocument = '''
  query GetUser(\$id: ID!) {
    $getUser(id: \$id) {
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
          content
          creatorId
          mosqueId
          createdAt
          updatedAt
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
      }
      createdMosques {
        items {
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
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
      }
      committees {
        items {
          id
          committeeId
          userId
          createdAt
          updatedAt
          _version
          _deleted
          _lastChangedAt
          creatorId
          owner
          __typename
        }
        nextToken
        startedAt
        __typename
      }
      gatherings {
        items {
          id
          gatheringId
          userId
          createdAt
          updatedAt
          _version
          _deleted
          _lastChangedAt
          creatorId
          owner
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          creatorId
          owner
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
      }
      volunteerTasks {
        items {
          id
          userId
          volunteerTaskId
          createdAt
          updatedAt
          _version
          _deleted
          _lastChangedAt
          owner
          creatorId
          __typename
        }
        nextToken
        startedAt
        __typename
      }
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

  static const getMosque = 'getMosque';
  static const getMosqueDocument = '''
  query GetMosque(\$id: ID!) {
    $getMosque(id: \$id) {
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
        __typename
      }
      hours {
        monday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        tuesday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        wednesday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        thursday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        friday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        saturday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        sunday {
          type
          operatingHours {
            open
            close
            __typename
          }
          __typename
        }
        __typename
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
          __typename
        }
        __typename
      }
      liveVideoUrl
      creatorId
      announcements {
        items {
          id
          title
          content
          creatorId
          mosqueId
          createdAt
          updatedAt
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
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
          _version
          _deleted
          _lastChangedAt
          __typename
        }
        nextToken
        startedAt
        __typename
      }
      createdAt
      updatedAt
      _version
      _deleted
      _lastChangedAt
      __typename
    }
  }
''';
}
