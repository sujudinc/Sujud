// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultiValueNotifier<T> extends StateNotifier<List<T>> {
  MultiValueNotifier(List<T> items)
      : _items = items,
        super(List.from(items));

  final List<T> _items;

  bool hasItem(T item) => _items.contains(item);

  void add(T item) {
    if (!_items.contains(item)) {
      _items.add(item);
      _emitReadyState();
    }
  }

  void remove(T item) {
    if (_items.contains(item)) {
      _items.remove(item);
      _emitReadyState();
    }
  }

  void _emitReadyState() {
    state = List.from(_items);
  }
}

StateNotifierProvider<MultiValueNotifier, List> initializeMultiValuePod<T>(
  List<T> items,
) =>
    StateNotifierProvider<MultiValueNotifier, List>(
      (ref) => MultiValueNotifier<T>(items),
    );
