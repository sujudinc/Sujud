part of 'multi_select.cubit.dart';

@freezed
class MultiSelectState<T> with _$MultiSelectState {
  const factory MultiSelectState.loading() = MultiSelectStateLoading<T>;
  const factory MultiSelectState.ready({
    @Default([]) List<T> items,
}) = MultiSelectStateReady<T>;

}
