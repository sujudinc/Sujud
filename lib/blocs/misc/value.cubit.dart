// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value.state.dart';

class ValueCubit<T> extends Cubit<ValueState<T>> {
  ValueCubit(T value)
      : _value = value,
        super(ValueState(value));

  T _value;

  set value(T value) {
    if (value != _value) {
      _value = value;
      emit(ValueState(value));
    }
  }
}
