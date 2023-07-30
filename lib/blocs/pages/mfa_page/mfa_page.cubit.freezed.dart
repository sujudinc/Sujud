// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfa_page.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MfaPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(AuthStateException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(AuthStateException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MfaPageStateInitial value) initial,
    required TResult Function(MfaPageStateLoading value) loading,
    required TResult Function(MfaPageStateSuccess value) success,
    required TResult Function(MfaPageStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MfaPageStateInitial value)? initial,
    TResult? Function(MfaPageStateLoading value)? loading,
    TResult? Function(MfaPageStateSuccess value)? success,
    TResult? Function(MfaPageStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MfaPageStateInitial value)? initial,
    TResult Function(MfaPageStateLoading value)? loading,
    TResult Function(MfaPageStateSuccess value)? success,
    TResult Function(MfaPageStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MfaPageStateCopyWith<$Res> {
  factory $MfaPageStateCopyWith(
          MfaPageState value, $Res Function(MfaPageState) then) =
      _$MfaPageStateCopyWithImpl<$Res, MfaPageState>;
}

/// @nodoc
class _$MfaPageStateCopyWithImpl<$Res, $Val extends MfaPageState>
    implements $MfaPageStateCopyWith<$Res> {
  _$MfaPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MfaPageStateInitialCopyWith<$Res> {
  factory _$$MfaPageStateInitialCopyWith(_$MfaPageStateInitial value,
          $Res Function(_$MfaPageStateInitial) then) =
      __$$MfaPageStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MfaPageStateInitialCopyWithImpl<$Res>
    extends _$MfaPageStateCopyWithImpl<$Res, _$MfaPageStateInitial>
    implements _$$MfaPageStateInitialCopyWith<$Res> {
  __$$MfaPageStateInitialCopyWithImpl(
      _$MfaPageStateInitial _value, $Res Function(_$MfaPageStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MfaPageStateInitial implements MfaPageStateInitial {
  const _$MfaPageStateInitial();

  @override
  String toString() {
    return 'MfaPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MfaPageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(MfaPageStateInitial value) initial,
    required TResult Function(MfaPageStateLoading value) loading,
    required TResult Function(MfaPageStateSuccess value) success,
    required TResult Function(MfaPageStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MfaPageStateInitial value)? initial,
    TResult? Function(MfaPageStateLoading value)? loading,
    TResult? Function(MfaPageStateSuccess value)? success,
    TResult? Function(MfaPageStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MfaPageStateInitial value)? initial,
    TResult Function(MfaPageStateLoading value)? loading,
    TResult Function(MfaPageStateSuccess value)? success,
    TResult Function(MfaPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MfaPageStateInitial implements MfaPageState {
  const factory MfaPageStateInitial() = _$MfaPageStateInitial;
}

/// @nodoc
abstract class _$$MfaPageStateLoadingCopyWith<$Res> {
  factory _$$MfaPageStateLoadingCopyWith(_$MfaPageStateLoading value,
          $Res Function(_$MfaPageStateLoading) then) =
      __$$MfaPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MfaPageStateLoadingCopyWithImpl<$Res>
    extends _$MfaPageStateCopyWithImpl<$Res, _$MfaPageStateLoading>
    implements _$$MfaPageStateLoadingCopyWith<$Res> {
  __$$MfaPageStateLoadingCopyWithImpl(
      _$MfaPageStateLoading _value, $Res Function(_$MfaPageStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MfaPageStateLoading implements MfaPageStateLoading {
  const _$MfaPageStateLoading();

  @override
  String toString() {
    return 'MfaPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MfaPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(MfaPageStateInitial value) initial,
    required TResult Function(MfaPageStateLoading value) loading,
    required TResult Function(MfaPageStateSuccess value) success,
    required TResult Function(MfaPageStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MfaPageStateInitial value)? initial,
    TResult? Function(MfaPageStateLoading value)? loading,
    TResult? Function(MfaPageStateSuccess value)? success,
    TResult? Function(MfaPageStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MfaPageStateInitial value)? initial,
    TResult Function(MfaPageStateLoading value)? loading,
    TResult Function(MfaPageStateSuccess value)? success,
    TResult Function(MfaPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MfaPageStateLoading implements MfaPageState {
  const factory MfaPageStateLoading() = _$MfaPageStateLoading;
}

/// @nodoc
abstract class _$$MfaPageStateSuccessCopyWith<$Res> {
  factory _$$MfaPageStateSuccessCopyWith(_$MfaPageStateSuccess value,
          $Res Function(_$MfaPageStateSuccess) then) =
      __$$MfaPageStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MfaPageStateSuccessCopyWithImpl<$Res>
    extends _$MfaPageStateCopyWithImpl<$Res, _$MfaPageStateSuccess>
    implements _$$MfaPageStateSuccessCopyWith<$Res> {
  __$$MfaPageStateSuccessCopyWithImpl(
      _$MfaPageStateSuccess _value, $Res Function(_$MfaPageStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MfaPageStateSuccess implements MfaPageStateSuccess {
  const _$MfaPageStateSuccess();

  @override
  String toString() {
    return 'MfaPageState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MfaPageStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(AuthStateException exception)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MfaPageStateInitial value) initial,
    required TResult Function(MfaPageStateLoading value) loading,
    required TResult Function(MfaPageStateSuccess value) success,
    required TResult Function(MfaPageStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MfaPageStateInitial value)? initial,
    TResult? Function(MfaPageStateLoading value)? loading,
    TResult? Function(MfaPageStateSuccess value)? success,
    TResult? Function(MfaPageStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MfaPageStateInitial value)? initial,
    TResult Function(MfaPageStateLoading value)? loading,
    TResult Function(MfaPageStateSuccess value)? success,
    TResult Function(MfaPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MfaPageStateSuccess implements MfaPageState {
  const factory MfaPageStateSuccess() = _$MfaPageStateSuccess;
}

/// @nodoc
abstract class _$$MfaPageStateFailureCopyWith<$Res> {
  factory _$$MfaPageStateFailureCopyWith(_$MfaPageStateFailure value,
          $Res Function(_$MfaPageStateFailure) then) =
      __$$MfaPageStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateException exception});
}

/// @nodoc
class __$$MfaPageStateFailureCopyWithImpl<$Res>
    extends _$MfaPageStateCopyWithImpl<$Res, _$MfaPageStateFailure>
    implements _$$MfaPageStateFailureCopyWith<$Res> {
  __$$MfaPageStateFailureCopyWithImpl(
      _$MfaPageStateFailure _value, $Res Function(_$MfaPageStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$MfaPageStateFailure(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AuthStateException,
    ));
  }
}

/// @nodoc

class _$MfaPageStateFailure implements MfaPageStateFailure {
  const _$MfaPageStateFailure(this.exception);

  @override
  final AuthStateException exception;

  @override
  String toString() {
    return 'MfaPageState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MfaPageStateFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MfaPageStateFailureCopyWith<_$MfaPageStateFailure> get copyWith =>
      __$$MfaPageStateFailureCopyWithImpl<_$MfaPageStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(AuthStateException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(AuthStateException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(MfaPageStateInitial value) initial,
    required TResult Function(MfaPageStateLoading value) loading,
    required TResult Function(MfaPageStateSuccess value) success,
    required TResult Function(MfaPageStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MfaPageStateInitial value)? initial,
    TResult? Function(MfaPageStateLoading value)? loading,
    TResult? Function(MfaPageStateSuccess value)? success,
    TResult? Function(MfaPageStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MfaPageStateInitial value)? initial,
    TResult Function(MfaPageStateLoading value)? loading,
    TResult Function(MfaPageStateSuccess value)? success,
    TResult Function(MfaPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MfaPageStateFailure implements MfaPageState {
  const factory MfaPageStateFailure(final AuthStateException exception) =
      _$MfaPageStateFailure;

  AuthStateException get exception;
  @JsonKey(ignore: true)
  _$$MfaPageStateFailureCopyWith<_$MfaPageStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
