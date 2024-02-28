// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_path.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationPath {
  NavigationRouteAbstract get route => throw _privateConstructorUsedError;
  String? get subRoute => throw _privateConstructorUsedError;
  String? get module => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;
  Map<String, String>? get queryParameters =>
      throw _privateConstructorUsedError;
  String? get fragment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationPathCopyWith<NavigationPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationPathCopyWith<$Res> {
  factory $NavigationPathCopyWith(
          NavigationPath value, $Res Function(NavigationPath) then) =
      _$NavigationPathCopyWithImpl<$Res, NavigationPath>;
  @useResult
  $Res call(
      {NavigationRouteAbstract route,
      String? subRoute,
      String? module,
      String? section,
      Map<String, String>? queryParameters,
      String? fragment});
}

/// @nodoc
class _$NavigationPathCopyWithImpl<$Res, $Val extends NavigationPath>
    implements $NavigationPathCopyWith<$Res> {
  _$NavigationPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? subRoute = freezed,
    Object? module = freezed,
    Object? section = freezed,
    Object? queryParameters = freezed,
    Object? fragment = freezed,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as NavigationRouteAbstract,
      subRoute: freezed == subRoute
          ? _value.subRoute
          : subRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationPathImplCopyWith<$Res>
    implements $NavigationPathCopyWith<$Res> {
  factory _$$NavigationPathImplCopyWith(_$NavigationPathImpl value,
          $Res Function(_$NavigationPathImpl) then) =
      __$$NavigationPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NavigationRouteAbstract route,
      String? subRoute,
      String? module,
      String? section,
      Map<String, String>? queryParameters,
      String? fragment});
}

/// @nodoc
class __$$NavigationPathImplCopyWithImpl<$Res>
    extends _$NavigationPathCopyWithImpl<$Res, _$NavigationPathImpl>
    implements _$$NavigationPathImplCopyWith<$Res> {
  __$$NavigationPathImplCopyWithImpl(
      _$NavigationPathImpl _value, $Res Function(_$NavigationPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? subRoute = freezed,
    Object? module = freezed,
    Object? section = freezed,
    Object? queryParameters = freezed,
    Object? fragment = freezed,
  }) {
    return _then(_$NavigationPathImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as NavigationRouteAbstract,
      subRoute: freezed == subRoute
          ? _value.subRoute
          : subRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: freezed == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      fragment: freezed == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NavigationPathImpl extends _NavigationPath {
  _$NavigationPathImpl(
      {required this.route,
      this.subRoute,
      this.module,
      this.section,
      final Map<String, String>? queryParameters,
      this.fragment})
      : _queryParameters = queryParameters,
        super._();

  @override
  final NavigationRouteAbstract route;
  @override
  final String? subRoute;
  @override
  final String? module;
  @override
  final String? section;
  final Map<String, String>? _queryParameters;
  @override
  Map<String, String>? get queryParameters {
    final value = _queryParameters;
    if (value == null) return null;
    if (_queryParameters is EqualUnmodifiableMapView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? fragment;

  @override
  String toString() {
    return 'NavigationPath(route: $route, subRoute: $subRoute, module: $module, section: $section, queryParameters: $queryParameters, fragment: $fragment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationPathImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.subRoute, subRoute) ||
                other.subRoute == subRoute) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.section, section) || other.section == section) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, subRoute, module, section,
      const DeepCollectionEquality().hash(_queryParameters), fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationPathImplCopyWith<_$NavigationPathImpl> get copyWith =>
      __$$NavigationPathImplCopyWithImpl<_$NavigationPathImpl>(
          this, _$identity);
}

abstract class _NavigationPath extends NavigationPath {
  factory _NavigationPath(
      {required final NavigationRouteAbstract route,
      final String? subRoute,
      final String? module,
      final String? section,
      final Map<String, String>? queryParameters,
      final String? fragment}) = _$NavigationPathImpl;
  _NavigationPath._() : super._();

  @override
  NavigationRouteAbstract get route;
  @override
  String? get subRoute;
  @override
  String? get module;
  @override
  String? get section;
  @override
  Map<String, String>? get queryParameters;
  @override
  String? get fragment;
  @override
  @JsonKey(ignore: true)
  _$$NavigationPathImplCopyWith<_$NavigationPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
