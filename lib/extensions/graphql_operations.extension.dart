// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

extension GetOperationsX on GetOperations {
  String get query {
    switch (this) {
      case GetOperations.getAnnouncement:
        return getAnnouncement;
      case GetOperations.getBookmark:
        return getBookmark;
      case GetOperations.getComment:
        return getComment;
      case GetOperations.getLike:
        return getLike;
      case GetOperations.getMosque:
        return getMosque;
      case GetOperations.getUser:
        return getUser;
    }
  }
}

extension ListOperationX on ListOperations {
  String get query {
    switch (this) {
      case ListOperations.announcementsByMosqueId:
        return announcementsByMosqueId;
      case ListOperations.listAnnouncements:
        return listAnnouncements;
      case ListOperations.listMosques:
        return listMosques;
      case ListOperations.listUsers:
        return listUsers;
    }
  }
}

extension CreateOperationX on CreateOperations {
  String get mutation {
    switch (this) {
      case CreateOperations.createAnnouncement:
        return createAnnouncement;
      case CreateOperations.createMosque:
        return createMosque;
      case CreateOperations.createUser:
        return createUser;
    }
  }
}

extension UpdateOperationX on UpdateOperations {
  String get mutation {
    switch (this) {
      case UpdateOperations.updateAnnouncement:
        return updateAnnouncement;
      case UpdateOperations.updateMosque:
        return updateMosque;
      case UpdateOperations.updateUser:
        return updateUser;
    }
  }
}

extension DeleteOperationX on DeleteOperations {
  String get mutation {
    switch (this) {
      case DeleteOperations.deleteAnnouncement:
        return deleteAnnouncement;
      case DeleteOperations.deleteMosque:
        return deleteMosque;
      case DeleteOperations.deleteUser:
        return deleteUser;
    }
  }
}

extension SubscriptionOperationX on SubscriptionOperations {
  String get subscription {
    switch (this) {
      case SubscriptionOperations.onCreateAnnouncement:
        return onCreateAnnouncement;
      case SubscriptionOperations.onUpdateAnnouncement:
        return onUpdateAnnouncement;
      case SubscriptionOperations.onDeleteAnnouncement:
        return onDeleteAnnouncement;
      case SubscriptionOperations.onCreateMosque:
        return onCreateMosque;
      case SubscriptionOperations.onUpdateMosque:
        return onUpdateMosque;
      case SubscriptionOperations.onDeleteMosque:
        return onDeleteMosque;
      case SubscriptionOperations.onCreateUser:
        return onCreateUser;
      case SubscriptionOperations.onUpdateUser:
        return onUpdateUser;
      case SubscriptionOperations.onDeleteUser:
        return onDeleteUser;
    }
  }
}
