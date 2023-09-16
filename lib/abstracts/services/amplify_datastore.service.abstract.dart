// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyDatastoreServiceAbstract<T extends Model> {
  Future<void> save({
    required T item,
    QueryPredicate? where,
  });

  Future<List<T>?> query({
    required ModelType<T> modelType,
    QueryPredicate? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  });

  Future<void> delete({
    required T item,
    QueryPredicate? where,
  });
}
