// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timeRemaining) running,
    required TResult Function(int timeRemaining) paused,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timeRemaining)? running,
    TResult? Function(int timeRemaining)? paused,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timeRemaining)? running,
    TResult Function(int timeRemaining)? paused,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStateRunning value) running,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStateInitial value)? initial,
    TResult? Function(TimerStateRunning value)? running,
    TResult? Function(TimerStatePaused value)? paused,
    TResult? Function(TimerStateCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStateRunning value)? running,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStateInitialImplCopyWith<$Res> {
  factory _$$TimerStateInitialImplCopyWith(_$TimerStateInitialImpl value,
          $Res Function(_$TimerStateInitialImpl) then) =
      __$$TimerStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStateInitialImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateInitialImpl>
    implements _$$TimerStateInitialImplCopyWith<$Res> {
  __$$TimerStateInitialImplCopyWithImpl(_$TimerStateInitialImpl _value,
      $Res Function(_$TimerStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStateInitialImpl implements TimerStateInitial {
  const _$TimerStateInitialImpl();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timeRemaining) running,
    required TResult Function(int timeRemaining) paused,
    required TResult Function() completed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timeRemaining)? running,
    TResult? Function(int timeRemaining)? paused,
    TResult? Function()? completed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timeRemaining)? running,
    TResult Function(int timeRemaining)? paused,
    TResult Function()? completed,
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
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStateRunning value) running,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateCompleted value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStateInitial value)? initial,
    TResult? Function(TimerStateRunning value)? running,
    TResult? Function(TimerStatePaused value)? paused,
    TResult? Function(TimerStateCompleted value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStateRunning value)? running,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerStateInitial implements TimerState {
  const factory TimerStateInitial() = _$TimerStateInitialImpl;
}

/// @nodoc
abstract class _$$TimerStateRunningImplCopyWith<$Res> {
  factory _$$TimerStateRunningImplCopyWith(_$TimerStateRunningImpl value,
          $Res Function(_$TimerStateRunningImpl) then) =
      __$$TimerStateRunningImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeRemaining});
}

/// @nodoc
class __$$TimerStateRunningImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateRunningImpl>
    implements _$$TimerStateRunningImplCopyWith<$Res> {
  __$$TimerStateRunningImplCopyWithImpl(_$TimerStateRunningImpl _value,
      $Res Function(_$TimerStateRunningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRemaining = null,
  }) {
    return _then(_$TimerStateRunningImpl(
      null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStateRunningImpl implements TimerStateRunning {
  const _$TimerStateRunningImpl(this.timeRemaining);

  @override
  final int timeRemaining;

  @override
  String toString() {
    return 'TimerState.running(timeRemaining: $timeRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateRunningImpl &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStateRunningImplCopyWith<_$TimerStateRunningImpl> get copyWith =>
      __$$TimerStateRunningImplCopyWithImpl<_$TimerStateRunningImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timeRemaining) running,
    required TResult Function(int timeRemaining) paused,
    required TResult Function() completed,
  }) {
    return running(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timeRemaining)? running,
    TResult? Function(int timeRemaining)? paused,
    TResult? Function()? completed,
  }) {
    return running?.call(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timeRemaining)? running,
    TResult Function(int timeRemaining)? paused,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(timeRemaining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStateRunning value) running,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateCompleted value) completed,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStateInitial value)? initial,
    TResult? Function(TimerStateRunning value)? running,
    TResult? Function(TimerStatePaused value)? paused,
    TResult? Function(TimerStateCompleted value)? completed,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStateRunning value)? running,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class TimerStateRunning implements TimerState {
  const factory TimerStateRunning(final int timeRemaining) =
      _$TimerStateRunningImpl;

  int get timeRemaining;
  @JsonKey(ignore: true)
  _$$TimerStateRunningImplCopyWith<_$TimerStateRunningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStatePausedImplCopyWith<$Res> {
  factory _$$TimerStatePausedImplCopyWith(_$TimerStatePausedImpl value,
          $Res Function(_$TimerStatePausedImpl) then) =
      __$$TimerStatePausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeRemaining});
}

/// @nodoc
class __$$TimerStatePausedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStatePausedImpl>
    implements _$$TimerStatePausedImplCopyWith<$Res> {
  __$$TimerStatePausedImplCopyWithImpl(_$TimerStatePausedImpl _value,
      $Res Function(_$TimerStatePausedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRemaining = null,
  }) {
    return _then(_$TimerStatePausedImpl(
      null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStatePausedImpl implements TimerStatePaused {
  const _$TimerStatePausedImpl(this.timeRemaining);

  @override
  final int timeRemaining;

  @override
  String toString() {
    return 'TimerState.paused(timeRemaining: $timeRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStatePausedImpl &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStatePausedImplCopyWith<_$TimerStatePausedImpl> get copyWith =>
      __$$TimerStatePausedImplCopyWithImpl<_$TimerStatePausedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timeRemaining) running,
    required TResult Function(int timeRemaining) paused,
    required TResult Function() completed,
  }) {
    return paused(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timeRemaining)? running,
    TResult? Function(int timeRemaining)? paused,
    TResult? Function()? completed,
  }) {
    return paused?.call(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timeRemaining)? running,
    TResult Function(int timeRemaining)? paused,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(timeRemaining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStateRunning value) running,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateCompleted value) completed,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStateInitial value)? initial,
    TResult? Function(TimerStateRunning value)? running,
    TResult? Function(TimerStatePaused value)? paused,
    TResult? Function(TimerStateCompleted value)? completed,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStateRunning value)? running,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class TimerStatePaused implements TimerState {
  const factory TimerStatePaused(final int timeRemaining) =
      _$TimerStatePausedImpl;

  int get timeRemaining;
  @JsonKey(ignore: true)
  _$$TimerStatePausedImplCopyWith<_$TimerStatePausedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStateCompletedImplCopyWith<$Res> {
  factory _$$TimerStateCompletedImplCopyWith(_$TimerStateCompletedImpl value,
          $Res Function(_$TimerStateCompletedImpl) then) =
      __$$TimerStateCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStateCompletedImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateCompletedImpl>
    implements _$$TimerStateCompletedImplCopyWith<$Res> {
  __$$TimerStateCompletedImplCopyWithImpl(_$TimerStateCompletedImpl _value,
      $Res Function(_$TimerStateCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStateCompletedImpl implements TimerStateCompleted {
  const _$TimerStateCompletedImpl();

  @override
  String toString() {
    return 'TimerState.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int timeRemaining) running,
    required TResult Function(int timeRemaining) paused,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int timeRemaining)? running,
    TResult? Function(int timeRemaining)? paused,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int timeRemaining)? running,
    TResult Function(int timeRemaining)? paused,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStateRunning value) running,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStateInitial value)? initial,
    TResult? Function(TimerStateRunning value)? running,
    TResult? Function(TimerStatePaused value)? paused,
    TResult? Function(TimerStateCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStateRunning value)? running,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class TimerStateCompleted implements TimerState {
  const factory TimerStateCompleted() = _$TimerStateCompletedImpl;
}
