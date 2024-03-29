// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_route.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationRoute {
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationRouteCopyWith<NavigationRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRouteCopyWith<$Res> {
  factory $NavigationRouteCopyWith(
          NavigationRoute value, $Res Function(NavigationRoute) then) =
      _$NavigationRouteCopyWithImpl<$Res, NavigationRoute>;
  @useResult
  $Res call(
      {@override String name,
      @override String path,
      @override String location});
}

/// @nodoc
class _$NavigationRouteCopyWithImpl<$Res, $Val extends NavigationRoute>
    implements $NavigationRouteCopyWith<$Res> {
  _$NavigationRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationRouteImplCopyWith<$Res>
    implements $NavigationRouteCopyWith<$Res> {
  factory _$$NavigationRouteImplCopyWith(_$NavigationRouteImpl value,
          $Res Function(_$NavigationRouteImpl) then) =
      __$$NavigationRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@override String name,
      @override String path,
      @override String location});
}

/// @nodoc
class __$$NavigationRouteImplCopyWithImpl<$Res>
    extends _$NavigationRouteCopyWithImpl<$Res, _$NavigationRouteImpl>
    implements _$$NavigationRouteImplCopyWith<$Res> {
  __$$NavigationRouteImplCopyWithImpl(
      _$NavigationRouteImpl _value, $Res Function(_$NavigationRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? location = null,
  }) {
    return _then(_$NavigationRouteImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigationRouteImpl implements _NavigationRoute {
  _$NavigationRouteImpl(
      {@override required this.name,
      @override required this.path,
      @override required this.location});

  @override
  @override
  final String name;
  @override
  @override
  final String path;
  @override
  @override
  final String location;

  @override
  String toString() {
    return 'NavigationRoute(name: $name, path: $path, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationRouteImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, path, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationRouteImplCopyWith<_$NavigationRouteImpl> get copyWith =>
      __$$NavigationRouteImplCopyWithImpl<_$NavigationRouteImpl>(
          this, _$identity);
}

abstract class _NavigationRoute implements NavigationRoute {
  factory _NavigationRoute(
      {@override required final String name,
      @override required final String path,
      @override required final String location}) = _$NavigationRouteImpl;

  @override
  @override
  String get name;
  @override
  @override
  String get path;
  @override
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$NavigationRouteImplCopyWith<_$NavigationRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
