part of 'value.cubit.dart';

@freezed
class ValueState<T> with _$ValueState {
  const factory ValueState.loading() = ValueStateLoading;
  const factory ValueState.ready(T value) = ValueStateReady;
}
