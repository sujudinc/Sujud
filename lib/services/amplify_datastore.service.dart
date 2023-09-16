// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyDatastoreService<T extends Model>
    implements AmplifyDatastoreServiceAbstract<T> {
  AmplifyDatastoreService({DataStoreCategory? amplifyDatastore})
      : _amplifyDatastore = amplifyDatastore ?? Amplify.DataStore;

  final DataStoreCategory _amplifyDatastore;

  @override
  Future<void> save({
    required T item,
    QueryPredicate? where,
  }) async {
    await _amplifyDatastore.save(item, where: where);
  }

  @override
  Future<List<T>?> query({
    required ModelType<T> modelType,
    QueryPredicate? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  }) async {
    final items = await _amplifyDatastore.query(
      modelType,
      where: where,
      pagination: pagination,
      sortBy: sortBy,
    );

    return items;
  }

  StreamSubscription<SubscriptionEvent<T>> listen({
    required ModelType<T> modelType,
    Function(T item)? onCreate,
    Function(T item)? onUpdate,
    Function(T item)? onDelete,
  }) {
    final streamSubscription = _amplifyDatastore.observe(modelType).listen(
      (event) {
        switch (event.eventType) {
          case EventType.create:
            onCreate?.call(event.item);
            break;
          case EventType.update:
            onUpdate?.call(event.item);
            break;
          case EventType.delete:
            onDelete?.call(event.item);
            break;
        }
      },
    );

    return streamSubscription;
  }

  @override
  Future<void> delete({
    required T item,
    QueryPredicate? where,
  }) async {
    await _amplifyDatastore.delete(item, where: where);
  }
}
