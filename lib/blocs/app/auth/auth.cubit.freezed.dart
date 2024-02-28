// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() loading,
    required TResult Function(AuthStateException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? loading,
    TResult? Function(AuthStateException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? loading,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateReady value) ready,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateReady value)? ready,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateReady value)? ready,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateReadyImplCopyWith<$Res> {
  factory _$$AuthStateReadyImplCopyWith(_$AuthStateReadyImpl value,
          $Res Function(_$AuthStateReadyImpl) then) =
      __$$AuthStateReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateReadyImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateReadyImpl>
    implements _$$AuthStateReadyImplCopyWith<$Res> {
  __$$AuthStateReadyImplCopyWithImpl(
      _$AuthStateReadyImpl _value, $Res Function(_$AuthStateReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateReadyImpl implements AuthStateReady {
  const _$AuthStateReadyImpl();

  @override
  String toString() {
    return 'AuthState.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() loading,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? loading,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? loading,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateReady value) ready,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateReady value)? ready,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateFailure value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateReady value)? ready,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AuthStateReady implements AuthState {
  const factory AuthStateReady() = _$AuthStateReadyImpl;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() loading,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? loading,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? loading,
    TResult Function(AuthStateException exception)? failure,
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
    required TResult Function(AuthStateReady value) ready,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateReady value)? ready,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateReady value)? ready,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateFailureImplCopyWith<$Res> {
  factory _$$AuthStateFailureImplCopyWith(_$AuthStateFailureImpl value,
          $Res Function(_$AuthStateFailureImpl) then) =
      __$$AuthStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateException exception});
}

/// @nodoc
class __$$AuthStateFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateFailureImpl>
    implements _$$AuthStateFailureImplCopyWith<$Res> {
  __$$AuthStateFailureImplCopyWithImpl(_$AuthStateFailureImpl _value,
      $Res Function(_$AuthStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AuthStateFailureImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AuthStateException,
    ));
  }
}

/// @nodoc

class _$AuthStateFailureImpl implements AuthStateFailure {
  const _$AuthStateFailureImpl(this.exception);

  @override
  final AuthStateException exception;

  @override
  String toString() {
    return 'AuthState.failure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateFailureImplCopyWith<_$AuthStateFailureImpl> get copyWith =>
      __$$AuthStateFailureImplCopyWithImpl<_$AuthStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function() loading,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function()? loading,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function()? loading,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateReady value) ready,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateReady value)? ready,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateReady value)? ready,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthStateFailure implements AuthState {
  const factory AuthStateFailure(final AuthStateException exception) =
      _$AuthStateFailureImpl;

  AuthStateException get exception;
  @JsonKey(ignore: true)
  _$$AuthStateFailureImplCopyWith<_$AuthStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
