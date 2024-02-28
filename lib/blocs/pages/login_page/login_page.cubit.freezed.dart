// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(AuthStateException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(AuthStateException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginPageStateInitial value) initial,
    required TResult Function(LoginPageStateLoading value) loading,
    required TResult Function(LoginPageStateSuccess value) success,
    required TResult Function(LoginPageStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStateInitial value)? initial,
    TResult? Function(LoginPageStateLoading value)? loading,
    TResult? Function(LoginPageStateSuccess value)? success,
    TResult? Function(LoginPageStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStateInitial value)? initial,
    TResult Function(LoginPageStateLoading value)? loading,
    TResult Function(LoginPageStateSuccess value)? success,
    TResult Function(LoginPageStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res, LoginPageState>;
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res, $Val extends LoginPageState>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginPageStateInitialImplCopyWith<$Res> {
  factory _$$LoginPageStateInitialImplCopyWith(
          _$LoginPageStateInitialImpl value,
          $Res Function(_$LoginPageStateInitialImpl) then) =
      __$$LoginPageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPageStateInitialImplCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateInitialImpl>
    implements _$$LoginPageStateInitialImplCopyWith<$Res> {
  __$$LoginPageStateInitialImplCopyWithImpl(_$LoginPageStateInitialImpl _value,
      $Res Function(_$LoginPageStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPageStateInitialImpl implements LoginPageStateInitial {
  const _$LoginPageStateInitialImpl();

  @override
  String toString() {
    return 'LoginPageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginPageStateInitial value) initial,
    required TResult Function(LoginPageStateLoading value) loading,
    required TResult Function(LoginPageStateSuccess value) success,
    required TResult Function(LoginPageStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStateInitial value)? initial,
    TResult? Function(LoginPageStateLoading value)? loading,
    TResult? Function(LoginPageStateSuccess value)? success,
    TResult? Function(LoginPageStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStateInitial value)? initial,
    TResult Function(LoginPageStateLoading value)? loading,
    TResult Function(LoginPageStateSuccess value)? success,
    TResult Function(LoginPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginPageStateInitial implements LoginPageState {
  const factory LoginPageStateInitial() = _$LoginPageStateInitialImpl;
}

/// @nodoc
abstract class _$$LoginPageStateLoadingImplCopyWith<$Res> {
  factory _$$LoginPageStateLoadingImplCopyWith(
          _$LoginPageStateLoadingImpl value,
          $Res Function(_$LoginPageStateLoadingImpl) then) =
      __$$LoginPageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPageStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateLoadingImpl>
    implements _$$LoginPageStateLoadingImplCopyWith<$Res> {
  __$$LoginPageStateLoadingImplCopyWithImpl(_$LoginPageStateLoadingImpl _value,
      $Res Function(_$LoginPageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPageStateLoadingImpl implements LoginPageStateLoading {
  const _$LoginPageStateLoadingImpl();

  @override
  String toString() {
    return 'LoginPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
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
    required TResult Function(LoginPageStateInitial value) initial,
    required TResult Function(LoginPageStateLoading value) loading,
    required TResult Function(LoginPageStateSuccess value) success,
    required TResult Function(LoginPageStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStateInitial value)? initial,
    TResult? Function(LoginPageStateLoading value)? loading,
    TResult? Function(LoginPageStateSuccess value)? success,
    TResult? Function(LoginPageStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStateInitial value)? initial,
    TResult Function(LoginPageStateLoading value)? loading,
    TResult Function(LoginPageStateSuccess value)? success,
    TResult Function(LoginPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginPageStateLoading implements LoginPageState {
  const factory LoginPageStateLoading() = _$LoginPageStateLoadingImpl;
}

/// @nodoc
abstract class _$$LoginPageStateSuccessImplCopyWith<$Res> {
  factory _$$LoginPageStateSuccessImplCopyWith(
          _$LoginPageStateSuccessImpl value,
          $Res Function(_$LoginPageStateSuccessImpl) then) =
      __$$LoginPageStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoginPageStateSuccessImplCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateSuccessImpl>
    implements _$$LoginPageStateSuccessImplCopyWith<$Res> {
  __$$LoginPageStateSuccessImplCopyWithImpl(_$LoginPageStateSuccessImpl _value,
      $Res Function(_$LoginPageStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginPageStateSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoginPageStateSuccessImpl implements LoginPageStateSuccess {
  const _$LoginPageStateSuccessImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginPageState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageStateSuccessImplCopyWith<_$LoginPageStateSuccessImpl>
      get copyWith => __$$LoginPageStateSuccessImplCopyWithImpl<
          _$LoginPageStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginPageStateInitial value) initial,
    required TResult Function(LoginPageStateLoading value) loading,
    required TResult Function(LoginPageStateSuccess value) success,
    required TResult Function(LoginPageStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStateInitial value)? initial,
    TResult? Function(LoginPageStateLoading value)? loading,
    TResult? Function(LoginPageStateSuccess value)? success,
    TResult? Function(LoginPageStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStateInitial value)? initial,
    TResult Function(LoginPageStateLoading value)? loading,
    TResult Function(LoginPageStateSuccess value)? success,
    TResult Function(LoginPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginPageStateSuccess implements LoginPageState {
  const factory LoginPageStateSuccess(final User user) =
      _$LoginPageStateSuccessImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoginPageStateSuccessImplCopyWith<_$LoginPageStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPageStateFailureImplCopyWith<$Res> {
  factory _$$LoginPageStateFailureImplCopyWith(
          _$LoginPageStateFailureImpl value,
          $Res Function(_$LoginPageStateFailureImpl) then) =
      __$$LoginPageStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateException exception});
}

/// @nodoc
class __$$LoginPageStateFailureImplCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateFailureImpl>
    implements _$$LoginPageStateFailureImplCopyWith<$Res> {
  __$$LoginPageStateFailureImplCopyWithImpl(_$LoginPageStateFailureImpl _value,
      $Res Function(_$LoginPageStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$LoginPageStateFailureImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AuthStateException,
    ));
  }
}

/// @nodoc

class _$LoginPageStateFailureImpl implements LoginPageStateFailure {
  const _$LoginPageStateFailureImpl(this.exception);

  @override
  final AuthStateException exception;

  @override
  String toString() {
    return 'LoginPageState.failure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateFailureImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageStateFailureImplCopyWith<_$LoginPageStateFailureImpl>
      get copyWith => __$$LoginPageStateFailureImplCopyWithImpl<
          _$LoginPageStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? success,
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
    required TResult Function(LoginPageStateInitial value) initial,
    required TResult Function(LoginPageStateLoading value) loading,
    required TResult Function(LoginPageStateSuccess value) success,
    required TResult Function(LoginPageStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginPageStateInitial value)? initial,
    TResult? Function(LoginPageStateLoading value)? loading,
    TResult? Function(LoginPageStateSuccess value)? success,
    TResult? Function(LoginPageStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginPageStateInitial value)? initial,
    TResult Function(LoginPageStateLoading value)? loading,
    TResult Function(LoginPageStateSuccess value)? success,
    TResult Function(LoginPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginPageStateFailure implements LoginPageState {
  const factory LoginPageStateFailure(final AuthStateException exception) =
      _$LoginPageStateFailureImpl;

  AuthStateException get exception;
  @JsonKey(ignore: true)
  _$$LoginPageStateFailureImplCopyWith<_$LoginPageStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
