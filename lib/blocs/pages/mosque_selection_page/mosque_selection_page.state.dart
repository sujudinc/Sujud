part of 'mosque_selection_page.cubit.dart';

@freezed
class MosqueSelectionState with _$MosqueSelectionState {
  const factory MosqueSelectionState.loading() = MosqueSelectionStateLoading;
  const factory MosqueSelectionState.ready() = MosqueSelectionStateReady;
  const factory MosqueSelectionState.failure(
    MosqueSelectionException exception,
  ) = MosqueSelectionStateFailure;
}

enum MosqueSelectionException {
  failedToLoadMosques,
}
