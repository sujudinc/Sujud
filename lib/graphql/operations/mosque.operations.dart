// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class MosqueOperations implements AmplifyModelApiOperations<Mosque> {
  @override
  ModelType<Mosque> get modelType => Mosque.classType;

  @override
  GetOperations get get => GetOperations.getMosque;

  @override
  ListOperations get list => ListOperations.listMosques;

  @override
  CreateOperations get create => CreateOperations.createMosque;

  @override
  UpdateOperations get update => UpdateOperations.updateMosque;

  @override
  DeleteOperations get delete => DeleteOperations.deleteMosque;

  @override
  SubscriptionOperations get onCreate => SubscriptionOperations.onCreateMosque;

  @override
  SubscriptionOperations get onUpdate => SubscriptionOperations.onUpdateMosque;

  @override
  SubscriptionOperations get onDelete => SubscriptionOperations.onDeleteMosque;
}
