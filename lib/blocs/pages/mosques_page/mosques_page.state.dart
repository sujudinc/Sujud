part of 'mosques_page.cubit.dart';

@freezed
class MosquesPageState with _$MosquesPageState {
  const factory MosquesPageState.loading() = MosquesPageStateLoading;
  const factory MosquesPageState.empty() = MosquesPageStateEmpty;
  const factory MosquesPageState.ready({
    required List<Mosque> mosques,
  }) = MosquesPageStateReady;
  const factory MosquesPageState.failure(
    MosqueSelectionPageException exception,
  ) = MosquesPageStateFailure;
}

enum MosqueSelectionPageException {
  failedToLoadMosques,
}
