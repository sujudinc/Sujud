// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_select.state.dart';
part 'multi_select.cubit.freezed.dart';

class MultiSelectCubit<T> extends Cubit<MultiSelectState<T>> {
  MultiSelectCubit(this._items)
      : super(
          MultiSelectState.ready(
            items: _items,
          ),
        );

  final List<T> _items;

  void add(T item) {
    _emitLoadingState();

    if (!_items.contains(item)) {
      _items.add(item);
      _emitReadyState();
    }
  }

  void remove(T item) {
    _emitLoadingState();

    if (_items.contains(item)) {
      _items.remove(item);
      _emitReadyState();
    }
  }

  bool hasItem(T item) => _items.contains(item);

  void _emitLoadingState() {
    emit(
      const MultiSelectState.loading(),
    );
  }

  void _emitReadyState() {
    emit(
      MultiSelectState.ready(
        items: _items,
      ),
    );
  }
}
