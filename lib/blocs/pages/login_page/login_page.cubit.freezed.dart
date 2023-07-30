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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$LoginPageStateInitialCopyWith<$Res> {
  factory _$$LoginPageStateInitialCopyWith(_$LoginPageStateInitial value,
          $Res Function(_$LoginPageStateInitial) then) =
      __$$LoginPageStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPageStateInitialCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateInitial>
    implements _$$LoginPageStateInitialCopyWith<$Res> {
  __$$LoginPageStateInitialCopyWithImpl(_$LoginPageStateInitial _value,
      $Res Function(_$LoginPageStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPageStateInitial implements LoginPageStateInitial {
  const _$LoginPageStateInitial();

  @override
  String toString() {
    return 'LoginPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginPageStateInitial);
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
  const factory LoginPageStateInitial() = _$LoginPageStateInitial;
}

/// @nodoc
abstract class _$$LoginPageStateLoadingCopyWith<$Res> {
  factory _$$LoginPageStateLoadingCopyWith(_$LoginPageStateLoading value,
          $Res Function(_$LoginPageStateLoading) then) =
      __$$LoginPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPageStateLoadingCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateLoading>
    implements _$$LoginPageStateLoadingCopyWith<$Res> {
  __$$LoginPageStateLoadingCopyWithImpl(_$LoginPageStateLoading _value,
      $Res Function(_$LoginPageStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPageStateLoading implements LoginPageStateLoading {
  const _$LoginPageStateLoading();

  @override
  String toString() {
    return 'LoginPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginPageStateLoading);
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
  const factory LoginPageStateLoading() = _$LoginPageStateLoading;
}

/// @nodoc
abstract class _$$LoginPageStateSuccessCopyWith<$Res> {
  factory _$$LoginPageStateSuccessCopyWith(_$LoginPageStateSuccess value,
          $Res Function(_$LoginPageStateSuccess) then) =
      __$$LoginPageStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$LoginPageStateSuccessCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateSuccess>
    implements _$$LoginPageStateSuccessCopyWith<$Res> {
  __$$LoginPageStateSuccessCopyWithImpl(_$LoginPageStateSuccess _value,
      $Res Function(_$LoginPageStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginPageStateSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoginPageStateSuccess implements LoginPageStateSuccess {
  const _$LoginPageStateSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginPageState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageStateSuccessCopyWith<_$LoginPageStateSuccess> get copyWith =>
      __$$LoginPageStateSuccessCopyWithImpl<_$LoginPageStateSuccess>(
          this, _$identity);

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
      _$LoginPageStateSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$LoginPageStateSuccessCopyWith<_$LoginPageStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPageStateFailureCopyWith<$Res> {
  factory _$$LoginPageStateFailureCopyWith(_$LoginPageStateFailure value,
          $Res Function(_$LoginPageStateFailure) then) =
      __$$LoginPageStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateException exception});
}

/// @nodoc
class __$$LoginPageStateFailureCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res, _$LoginPageStateFailure>
    implements _$$LoginPageStateFailureCopyWith<$Res> {
  __$$LoginPageStateFailureCopyWithImpl(_$LoginPageStateFailure _value,
      $Res Function(_$LoginPageStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$LoginPageStateFailure(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AuthStateException,
    ));
  }
}

/// @nodoc

class _$LoginPageStateFailure implements LoginPageStateFailure {
  const _$LoginPageStateFailure(this.exception);

  @override
  final AuthStateException exception;

  @override
  String toString() {
    return 'LoginPageState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageStateFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageStateFailureCopyWith<_$LoginPageStateFailure> get copyWith =>
      __$$LoginPageStateFailureCopyWithImpl<_$LoginPageStateFailure>(
          this, _$identity);

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
      _$LoginPageStateFailure;

  AuthStateException get exception;
  @JsonKey(ignore: true)
  _$$LoginPageStateFailureCopyWith<_$LoginPageStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
