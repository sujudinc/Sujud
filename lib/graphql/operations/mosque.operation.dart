// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class MosqueOperation implements MosqueOperationAbstract {
  @override
  ModelType<Mosque> get modelType => Mosque.classType;

  @override
  GetOperation get get => GetOperation.getMosque;

  @override
  ListOperation get list => ListOperation.listMosques;

  @override
  CreateOperation get create => CreateOperation.createMosque;

  @override
  UpdateOperation get update => UpdateOperation.updateMosque;

  @override
  DeleteOperation get delete => DeleteOperation.deleteMosque;

  @override
  SubscriptionOperation get onCreate => SubscriptionOperation.onCreateMosque;

  @override
  SubscriptionOperation get onUpdate => SubscriptionOperation.onUpdateMosque;

  @override
  SubscriptionOperation get onDelete => SubscriptionOperation.onDeleteMosque;
}
