// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value.state.dart';
part 'value.cubit.freezed.dart';

class ValueCubit<T> extends Cubit<ValueState<T>> {
  ValueCubit(T value)
      : _value = value,
        super(ValueState.ready(value));

  T _value;

  set value(T value) {
    emit(const ValueState.loading());

    if (value != _value) {
      _value = value;
      emit(ValueState.ready(value));
    }
  }
}
