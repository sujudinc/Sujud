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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$TimerStateInitialCopyWith<$Res> {
  factory _$$TimerStateInitialCopyWith(
          _$TimerStateInitial value, $Res Function(_$TimerStateInitial) then) =
      __$$TimerStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStateInitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateInitial>
    implements _$$TimerStateInitialCopyWith<$Res> {
  __$$TimerStateInitialCopyWithImpl(
      _$TimerStateInitial _value, $Res Function(_$TimerStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStateInitial implements TimerStateInitial {
  const _$TimerStateInitial();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStateInitial);
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
  const factory TimerStateInitial() = _$TimerStateInitial;
}

/// @nodoc
abstract class _$$TimerStateRunningCopyWith<$Res> {
  factory _$$TimerStateRunningCopyWith(
          _$TimerStateRunning value, $Res Function(_$TimerStateRunning) then) =
      __$$TimerStateRunningCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeRemaining});
}

/// @nodoc
class __$$TimerStateRunningCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateRunning>
    implements _$$TimerStateRunningCopyWith<$Res> {
  __$$TimerStateRunningCopyWithImpl(
      _$TimerStateRunning _value, $Res Function(_$TimerStateRunning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRemaining = null,
  }) {
    return _then(_$TimerStateRunning(
      null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStateRunning implements TimerStateRunning {
  const _$TimerStateRunning(this.timeRemaining);

  @override
  final int timeRemaining;

  @override
  String toString() {
    return 'TimerState.running(timeRemaining: $timeRemaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateRunning &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStateRunningCopyWith<_$TimerStateRunning> get copyWith =>
      __$$TimerStateRunningCopyWithImpl<_$TimerStateRunning>(this, _$identity);

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
      _$TimerStateRunning;

  int get timeRemaining;
  @JsonKey(ignore: true)
  _$$TimerStateRunningCopyWith<_$TimerStateRunning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStatePausedCopyWith<$Res> {
  factory _$$TimerStatePausedCopyWith(
          _$TimerStatePaused value, $Res Function(_$TimerStatePaused) then) =
      __$$TimerStatePausedCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeRemaining});
}

/// @nodoc
class __$$TimerStatePausedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStatePaused>
    implements _$$TimerStatePausedCopyWith<$Res> {
  __$$TimerStatePausedCopyWithImpl(
      _$TimerStatePaused _value, $Res Function(_$TimerStatePaused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRemaining = null,
  }) {
    return _then(_$TimerStatePaused(
      null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStatePaused implements TimerStatePaused {
  const _$TimerStatePaused(this.timeRemaining);

  @override
  final int timeRemaining;

  @override
  String toString() {
    return 'TimerState.paused(timeRemaining: $timeRemaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStatePaused &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStatePausedCopyWith<_$TimerStatePaused> get copyWith =>
      __$$TimerStatePausedCopyWithImpl<_$TimerStatePaused>(this, _$identity);

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
  const factory TimerStatePaused(final int timeRemaining) = _$TimerStatePaused;

  int get timeRemaining;
  @JsonKey(ignore: true)
  _$$TimerStatePausedCopyWith<_$TimerStatePaused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerStateCompletedCopyWith<$Res> {
  factory _$$TimerStateCompletedCopyWith(_$TimerStateCompleted value,
          $Res Function(_$TimerStateCompleted) then) =
      __$$TimerStateCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerStateCompletedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateCompleted>
    implements _$$TimerStateCompletedCopyWith<$Res> {
  __$$TimerStateCompletedCopyWithImpl(
      _$TimerStateCompleted _value, $Res Function(_$TimerStateCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerStateCompleted implements TimerStateCompleted {
  const _$TimerStateCompleted();

  @override
  String toString() {
    return 'TimerState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerStateCompleted);
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
  const factory TimerStateCompleted() = _$TimerStateCompleted;
}
