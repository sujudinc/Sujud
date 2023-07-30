// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueStateLoading<T> value) loading,
    required TResult Function(ValueStateReady<T> value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueStateLoading<T> value)? loading,
    TResult? Function(ValueStateReady<T> value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueStateLoading<T> value)? loading,
    TResult Function(ValueStateReady<T> value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueStateCopyWith<T, $Res> {
  factory $ValueStateCopyWith(
          ValueState<T> value, $Res Function(ValueState<T>) then) =
      _$ValueStateCopyWithImpl<T, $Res, ValueState<T>>;
}

/// @nodoc
class _$ValueStateCopyWithImpl<T, $Res, $Val extends ValueState<T>>
    implements $ValueStateCopyWith<T, $Res> {
  _$ValueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValueStateLoadingCopyWith<T, $Res> {
  factory _$$ValueStateLoadingCopyWith(_$ValueStateLoading<T> value,
          $Res Function(_$ValueStateLoading<T>) then) =
      __$$ValueStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ValueStateLoadingCopyWithImpl<T, $Res>
    extends _$ValueStateCopyWithImpl<T, $Res, _$ValueStateLoading<T>>
    implements _$$ValueStateLoadingCopyWith<T, $Res> {
  __$$ValueStateLoadingCopyWithImpl(_$ValueStateLoading<T> _value,
      $Res Function(_$ValueStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValueStateLoading<T> implements ValueStateLoading<T> {
  const _$ValueStateLoading();

  @override
  String toString() {
    return 'ValueState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValueStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? ready,
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
    required TResult Function(ValueStateLoading<T> value) loading,
    required TResult Function(ValueStateReady<T> value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueStateLoading<T> value)? loading,
    TResult? Function(ValueStateReady<T> value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueStateLoading<T> value)? loading,
    TResult Function(ValueStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ValueStateLoading<T> implements ValueState<T> {
  const factory ValueStateLoading() = _$ValueStateLoading<T>;
}

/// @nodoc
abstract class _$$ValueStateReadyCopyWith<T, $Res> {
  factory _$$ValueStateReadyCopyWith(_$ValueStateReady<T> value,
          $Res Function(_$ValueStateReady<T>) then) =
      __$$ValueStateReadyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ValueStateReadyCopyWithImpl<T, $Res>
    extends _$ValueStateCopyWithImpl<T, $Res, _$ValueStateReady<T>>
    implements _$$ValueStateReadyCopyWith<T, $Res> {
  __$$ValueStateReadyCopyWithImpl(
      _$ValueStateReady<T> _value, $Res Function(_$ValueStateReady<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ValueStateReady<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueStateReady<T> implements ValueStateReady<T> {
  const _$ValueStateReady(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ValueState<$T>.ready(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueStateReady<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueStateReadyCopyWith<T, _$ValueStateReady<T>> get copyWith =>
      __$$ValueStateReadyCopyWithImpl<T, _$ValueStateReady<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) ready,
  }) {
    return ready(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T value)? ready,
  }) {
    return ready?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueStateLoading<T> value) loading,
    required TResult Function(ValueStateReady<T> value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValueStateLoading<T> value)? loading,
    TResult? Function(ValueStateReady<T> value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueStateLoading<T> value)? loading,
    TResult Function(ValueStateReady<T> value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ValueStateReady<T> implements ValueState<T> {
  const factory ValueStateReady(final T value) = _$ValueStateReady<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$ValueStateReadyCopyWith<T, _$ValueStateReady<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
