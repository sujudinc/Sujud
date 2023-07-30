// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleValueNotifier<T> extends StateNotifier<List<T>> {
  SingleValueNotifier(T initialValue) : super([initialValue]);

  T get value => state.last;

  set value(T value) {
    state = [...state, value];
  }
}

StateNotifierProvider<SingleValueNotifier<T>, List<T>>
    initializeSingleValuePod<T>(
  T initialValue,
) =>
        StateNotifierProvider<SingleValueNotifier<T>, List<T>>(
          (ref) => SingleValueNotifier<T>(initialValue),
        );
