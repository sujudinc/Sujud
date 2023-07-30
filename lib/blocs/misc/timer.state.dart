part of 'timer.cubit.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = TimerStateInitial;
  const factory TimerState.running(int timeRemaining) = TimerStateRunning;
  const factory TimerState.paused(int timeRemaining) = TimerStatePaused;
  const factory TimerState.completed() = TimerStateCompleted;
}
