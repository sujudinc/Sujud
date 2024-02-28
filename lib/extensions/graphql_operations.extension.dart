// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

extension GetOperationX on GetOperation {
  String get query {
    switch (this) {
      case GetOperation.getAnnouncement:
        return getAnnouncement;
      case GetOperation.getBookmark:
        return getBookmark;
      case GetOperation.getComment:
        return getComment;
      case GetOperation.getLike:
        return getLike;
      case GetOperation.getMosque:
        return getMosque;
      case GetOperation.getUser:
        return getUser;
    }
  }
}

extension ListOperationX on ListOperation {
  String get query {
    switch (this) {
      case ListOperation.announcementsByMosqueId:
        return announcementsByMosqueId;
      case ListOperation.listAnnouncements:
        return listAnnouncements;
      case ListOperation.listMosques:
        return listMosques;
      case ListOperation.listUsers:
        return listUsers;
    }
  }
}

extension CreateOperationX on CreateOperation {
  String get mutation {
    switch (this) {
      case CreateOperation.createAnnouncement:
        return createAnnouncement;
      case CreateOperation.createMosque:
        return createMosque;
    }
  }
}

extension UpdateOperationX on UpdateOperation {
  String get mutation {
    switch (this) {
      case UpdateOperation.updateAnnouncement:
        return updateAnnouncement;
      case UpdateOperation.updateMosque:
        return updateMosque;
      case UpdateOperation.updateUser:
        return updateUser;
    }
  }
}

extension DeleteOperationX on DeleteOperation {
  String get mutation {
    switch (this) {
      case DeleteOperation.deleteAnnouncement:
        return deleteAnnouncement;
      case DeleteOperation.deleteMosque:
        return deleteMosque;
    }
  }
}

extension SubscriptionOperationX on SubscriptionOperation {
  String get subscription {
    switch (this) {
      case SubscriptionOperation.onCreateAnnouncement:
        return onCreateAnnouncement;
      case SubscriptionOperation.onUpdateAnnouncement:
        return onUpdateAnnouncement;
      case SubscriptionOperation.onDeleteAnnouncement:
        return onDeleteAnnouncement;
      case SubscriptionOperation.onCreateMosque:
        return onCreateMosque;
      case SubscriptionOperation.onUpdateMosque:
        return onUpdateMosque;
      case SubscriptionOperation.onDeleteMosque:
        return onDeleteMosque;
      case SubscriptionOperation.onCreateUser:
        return onCreateUser;
      case SubscriptionOperation.onUpdateUser:
        return onUpdateUser;
      case SubscriptionOperation.onDeleteUser:
        return onDeleteUser;
    }
  }
}
