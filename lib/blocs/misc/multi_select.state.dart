part of 'multi_select.cubit.dart';

@immutable
class MultiSelectState<T> {
  const MultiSelectState(this.items);

  final List<T> items;
}
