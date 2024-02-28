part of 'get_urls.cubit.dart';

@freezed
class GetUrlsState with _$GetUrlsState {
  const factory GetUrlsState.initial() = GetUrlsStateInitial;
  const factory GetUrlsState.loading() = GetUrlsStateLoading;
  const factory GetUrlsState.ready(List<String> urls) = GetUrlsStateReady;
  const factory GetUrlsState.failure(
    GetUrlException exception,
  ) = GetUrlsStateError;
}

enum GetUrlException {
  failedToDownloadFile,
}
