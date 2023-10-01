import 'package:equatable/equatable.dart';

abstract class ApiQueryFilter with EquatableMixin {
  const ApiQueryFilter();

  String? get attribute => null;
  FilterOperation? get filterOperation => null;
  dynamic get filterValue => null;
  List<ApiQueryFilter>? get and => null;
  List<ApiQueryFilter>? get or => null;

  @override
  List<Object?> get props => [attribute, filterOperation, filterValue, and, or];

  factory ApiQueryFilter.and(List<ApiQueryFilter> filters) {
    final filter = ApiQueryFilterAnd(filters);

    return filter;
  }

  factory ApiQueryFilter.equal(String attribute, filterValue) {
    final filter =
        ApiQueryFilterElement(attribute, FilterOperation.eq, filterValue);

    return filter;
  }

  factory ApiQueryFilter.exists(String attribute, {bool? filterValue}) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.exists,
      filterValue ?? '',
    );

    return filter;
  }

  factory ApiQueryFilter.notEqual(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.ne,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.greaterThan(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.gt,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.greaterThanOrEqual(
    String attribute,
    filterValue,
  ) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.gte,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.lessThan(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.lt,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.lessThanOrEqual(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.lte,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.match(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.match,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.matchPhrase(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.matchPhrase,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.matchPhrasePrefix(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.matchPhrasePrefix,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.multiMatch(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.multiMatch,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.or(List<ApiQueryFilter> filters) {
    final filter = ApiQueryFilterOr(filters);

    return filter;
  }

  factory ApiQueryFilter.regexp(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.regexp,
      filterValue,
    );

    return filter;
  }

  factory ApiQueryFilter.wildcard(String attribute, filterValue) {
    final filter = ApiQueryFilterElement(
      attribute,
      FilterOperation.wildcard,
      filterValue,
    );

    return filter;
  }
}

class ApiQueryFilterElement extends ApiQueryFilter {
  const ApiQueryFilterElement(
    this.attribute,
    this.filterOperation,
    this.filterValue,
  );

  @override
  final String attribute;
  @override
  final FilterOperation filterOperation;
  @override
  final dynamic filterValue;
}

class ApiQueryFilterAnd extends ApiQueryFilter {
  const ApiQueryFilterAnd(this._filters);

  final List<ApiQueryFilter> _filters;

  @override
  List<ApiQueryFilter>? get and => _filters;
}

class ApiQueryFilterOr extends ApiQueryFilter {
  const ApiQueryFilterOr(this._filters);

  final List<ApiQueryFilter> _filters;

  @override
  List<ApiQueryFilter> get or => _filters;
}

enum FilterOperation {
  ne,
  gt,
  lt,
  gte,
  lte,
  eq,
  match,
  matchPhrase,
  matchPhrasePrefix,
  multiMatch,
  exists,
  wildcard,
  regexp,
  range,
}
