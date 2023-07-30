// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_select.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultiSelectState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<T> items) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<T> items)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<T> items)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectStateLoading<T> value) loading,
    required TResult Function(MultiSelectStateReady<T> value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectStateLoading<T> value)? loading,
    TResult? Function(MultiSelectStateReady<T> value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectStateLoading<T> value)? loading,
    TResult Function(MultiSelectStateReady<T> value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSelectStateCopyWith<T, $Res> {
  factory $MultiSelectStateCopyWith(
          MultiSelectState<T> value, $Res Function(MultiSelectState<T>) then) =
      _$MultiSelectStateCopyWithImpl<T, $Res, MultiSelectState<T>>;
}

/// @nodoc
class _$MultiSelectStateCopyWithImpl<T, $Res, $Val extends MultiSelectState<T>>
    implements $MultiSelectStateCopyWith<T, $Res> {
  _$MultiSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MultiSelectStateLoadingCopyWith<T, $Res> {
  factory _$$MultiSelectStateLoadingCopyWith(_$MultiSelectStateLoading<T> value,
          $Res Function(_$MultiSelectStateLoading<T>) then) =
      __$$MultiSelectStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MultiSelectStateLoadingCopyWithImpl<T, $Res>
    extends _$MultiSelectStateCopyWithImpl<T, $Res,
        _$MultiSelectStateLoading<T>>
    implements _$$MultiSelectStateLoadingCopyWith<T, $Res> {
  __$$MultiSelectStateLoadingCopyWithImpl(_$MultiSelectStateLoading<T> _value,
      $Res Function(_$MultiSelectStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MultiSelectStateLoading<T> implements MultiSelectStateLoading<T> {
  const _$MultiSelectStateLoading();

  @override
  String toString() {
    return 'MultiSelectState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<T> items) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<T> items)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<T> items)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectStateLoading<T> value) loading,
    required TResult Function(MultiSelectStateReady<T> value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectStateLoading<T> value)? loading,
    TResult? Function(MultiSelectStateReady<T> value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectStateLoading<T> value)? loading,
    TResult Function(MultiSelectStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MultiSelectStateLoading<T> implements MultiSelectState<T> {
  const factory MultiSelectStateLoading() = _$MultiSelectStateLoading<T>;
}

/// @nodoc
abstract class _$$MultiSelectStateReadyCopyWith<T, $Res> {
  factory _$$MultiSelectStateReadyCopyWith(_$MultiSelectStateReady<T> value,
          $Res Function(_$MultiSelectStateReady<T>) then) =
      __$$MultiSelectStateReadyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$MultiSelectStateReadyCopyWithImpl<T, $Res>
    extends _$MultiSelectStateCopyWithImpl<T, $Res, _$MultiSelectStateReady<T>>
    implements _$$MultiSelectStateReadyCopyWith<T, $Res> {
  __$$MultiSelectStateReadyCopyWithImpl(_$MultiSelectStateReady<T> _value,
      $Res Function(_$MultiSelectStateReady<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$MultiSelectStateReady<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$MultiSelectStateReady<T> implements MultiSelectStateReady<T> {
  const _$MultiSelectStateReady({final List<T> items = const []})
      : _items = items;

  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MultiSelectState<$T>.ready(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectStateReady<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiSelectStateReadyCopyWith<T, _$MultiSelectStateReady<T>>
      get copyWith =>
          __$$MultiSelectStateReadyCopyWithImpl<T, _$MultiSelectStateReady<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<T> items) ready,
  }) {
    return ready(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<T> items)? ready,
  }) {
    return ready?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<T> items)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectStateLoading<T> value) loading,
    required TResult Function(MultiSelectStateReady<T> value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectStateLoading<T> value)? loading,
    TResult? Function(MultiSelectStateReady<T> value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectStateLoading<T> value)? loading,
    TResult Function(MultiSelectStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class MultiSelectStateReady<T> implements MultiSelectState<T> {
  const factory MultiSelectStateReady({final List<T> items}) =
      _$MultiSelectStateReady<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$$MultiSelectStateReadyCopyWith<T, _$MultiSelectStateReady<T>>
      get copyWith => throw _privateConstructorUsedError;
}
