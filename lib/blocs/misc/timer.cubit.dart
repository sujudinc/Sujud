import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer.state.dart';
part 'timer.cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit(int seconds)
      : _seconds = seconds,
        _remainingTime = seconds,
        super(const TimerState.initial());

  final int _seconds;
  int _remainingTime;
  Timer? _timer;

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_remainingTime > 0) {
        _remainingTime--;
        emit(TimerState.running(_remainingTime));
      } else {
        _timer?.cancel();
        emit(const TimerState.completed());
      }
    });
    emit(TimerState.running(_remainingTime));
  }

  void pause() {
    _timer?.cancel();
    emit(TimerState.paused(_remainingTime));
  }

  void reset() {
    _timer?.cancel();
    _remainingTime = _seconds;
    emit(const TimerState.initial());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
