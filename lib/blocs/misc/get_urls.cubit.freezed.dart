// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_urls.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUrlsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> urls) ready,
    required TResult Function(GetUrlException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> urls)? ready,
    TResult? Function(GetUrlException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> urls)? ready,
    TResult Function(GetUrlException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrlsStateInitial value) initial,
    required TResult Function(GetUrlsStateLoading value) loading,
    required TResult Function(GetUrlsStateReady value) ready,
    required TResult Function(GetUrlsStateError value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrlsStateInitial value)? initial,
    TResult? Function(GetUrlsStateLoading value)? loading,
    TResult? Function(GetUrlsStateReady value)? ready,
    TResult? Function(GetUrlsStateError value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrlsStateInitial value)? initial,
    TResult Function(GetUrlsStateLoading value)? loading,
    TResult Function(GetUrlsStateReady value)? ready,
    TResult Function(GetUrlsStateError value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUrlsStateCopyWith<$Res> {
  factory $GetUrlsStateCopyWith(
          GetUrlsState value, $Res Function(GetUrlsState) then) =
      _$GetUrlsStateCopyWithImpl<$Res, GetUrlsState>;
}

/// @nodoc
class _$GetUrlsStateCopyWithImpl<$Res, $Val extends GetUrlsState>
    implements $GetUrlsStateCopyWith<$Res> {
  _$GetUrlsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUrlsStateInitialImplCopyWith<$Res> {
  factory _$$GetUrlsStateInitialImplCopyWith(_$GetUrlsStateInitialImpl value,
          $Res Function(_$GetUrlsStateInitialImpl) then) =
      __$$GetUrlsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUrlsStateInitialImplCopyWithImpl<$Res>
    extends _$GetUrlsStateCopyWithImpl<$Res, _$GetUrlsStateInitialImpl>
    implements _$$GetUrlsStateInitialImplCopyWith<$Res> {
  __$$GetUrlsStateInitialImplCopyWithImpl(_$GetUrlsStateInitialImpl _value,
      $Res Function(_$GetUrlsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUrlsStateInitialImpl implements GetUrlsStateInitial {
  const _$GetUrlsStateInitialImpl();

  @override
  String toString() {
    return 'GetUrlsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrlsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> urls) ready,
    required TResult Function(GetUrlException exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> urls)? ready,
    TResult? Function(GetUrlException exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> urls)? ready,
    TResult Function(GetUrlException exception)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrlsStateInitial value) initial,
    required TResult Function(GetUrlsStateLoading value) loading,
    required TResult Function(GetUrlsStateReady value) ready,
    required TResult Function(GetUrlsStateError value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrlsStateInitial value)? initial,
    TResult? Function(GetUrlsStateLoading value)? loading,
    TResult? Function(GetUrlsStateReady value)? ready,
    TResult? Function(GetUrlsStateError value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrlsStateInitial value)? initial,
    TResult Function(GetUrlsStateLoading value)? loading,
    TResult Function(GetUrlsStateReady value)? ready,
    TResult Function(GetUrlsStateError value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetUrlsStateInitial implements GetUrlsState {
  const factory GetUrlsStateInitial() = _$GetUrlsStateInitialImpl;
}

/// @nodoc
abstract class _$$GetUrlsStateLoadingImplCopyWith<$Res> {
  factory _$$GetUrlsStateLoadingImplCopyWith(_$GetUrlsStateLoadingImpl value,
          $Res Function(_$GetUrlsStateLoadingImpl) then) =
      __$$GetUrlsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUrlsStateLoadingImplCopyWithImpl<$Res>
    extends _$GetUrlsStateCopyWithImpl<$Res, _$GetUrlsStateLoadingImpl>
    implements _$$GetUrlsStateLoadingImplCopyWith<$Res> {
  __$$GetUrlsStateLoadingImplCopyWithImpl(_$GetUrlsStateLoadingImpl _value,
      $Res Function(_$GetUrlsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUrlsStateLoadingImpl implements GetUrlsStateLoading {
  const _$GetUrlsStateLoadingImpl();

  @override
  String toString() {
    return 'GetUrlsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrlsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> urls) ready,
    required TResult Function(GetUrlException exception) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> urls)? ready,
    TResult? Function(GetUrlException exception)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> urls)? ready,
    TResult Function(GetUrlException exception)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrlsStateInitial value) initial,
    required TResult Function(GetUrlsStateLoading value) loading,
    required TResult Function(GetUrlsStateReady value) ready,
    required TResult Function(GetUrlsStateError value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrlsStateInitial value)? initial,
    TResult? Function(GetUrlsStateLoading value)? loading,
    TResult? Function(GetUrlsStateReady value)? ready,
    TResult? Function(GetUrlsStateError value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrlsStateInitial value)? initial,
    TResult Function(GetUrlsStateLoading value)? loading,
    TResult Function(GetUrlsStateReady value)? ready,
    TResult Function(GetUrlsStateError value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetUrlsStateLoading implements GetUrlsState {
  const factory GetUrlsStateLoading() = _$GetUrlsStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetUrlsStateReadyImplCopyWith<$Res> {
  factory _$$GetUrlsStateReadyImplCopyWith(_$GetUrlsStateReadyImpl value,
          $Res Function(_$GetUrlsStateReadyImpl) then) =
      __$$GetUrlsStateReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> urls});
}

/// @nodoc
class __$$GetUrlsStateReadyImplCopyWithImpl<$Res>
    extends _$GetUrlsStateCopyWithImpl<$Res, _$GetUrlsStateReadyImpl>
    implements _$$GetUrlsStateReadyImplCopyWith<$Res> {
  __$$GetUrlsStateReadyImplCopyWithImpl(_$GetUrlsStateReadyImpl _value,
      $Res Function(_$GetUrlsStateReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
  }) {
    return _then(_$GetUrlsStateReadyImpl(
      null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetUrlsStateReadyImpl implements GetUrlsStateReady {
  const _$GetUrlsStateReadyImpl(final List<String> urls) : _urls = urls;

  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'GetUrlsState.ready(urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrlsStateReadyImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUrlsStateReadyImplCopyWith<_$GetUrlsStateReadyImpl> get copyWith =>
      __$$GetUrlsStateReadyImplCopyWithImpl<_$GetUrlsStateReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> urls) ready,
    required TResult Function(GetUrlException exception) failure,
  }) {
    return ready(urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> urls)? ready,
    TResult? Function(GetUrlException exception)? failure,
  }) {
    return ready?.call(urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> urls)? ready,
    TResult Function(GetUrlException exception)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrlsStateInitial value) initial,
    required TResult Function(GetUrlsStateLoading value) loading,
    required TResult Function(GetUrlsStateReady value) ready,
    required TResult Function(GetUrlsStateError value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrlsStateInitial value)? initial,
    TResult? Function(GetUrlsStateLoading value)? loading,
    TResult? Function(GetUrlsStateReady value)? ready,
    TResult? Function(GetUrlsStateError value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrlsStateInitial value)? initial,
    TResult Function(GetUrlsStateLoading value)? loading,
    TResult Function(GetUrlsStateReady value)? ready,
    TResult Function(GetUrlsStateError value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class GetUrlsStateReady implements GetUrlsState {
  const factory GetUrlsStateReady(final List<String> urls) =
      _$GetUrlsStateReadyImpl;

  List<String> get urls;
  @JsonKey(ignore: true)
  _$$GetUrlsStateReadyImplCopyWith<_$GetUrlsStateReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUrlsStateErrorImplCopyWith<$Res> {
  factory _$$GetUrlsStateErrorImplCopyWith(_$GetUrlsStateErrorImpl value,
          $Res Function(_$GetUrlsStateErrorImpl) then) =
      __$$GetUrlsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUrlException exception});
}

/// @nodoc
class __$$GetUrlsStateErrorImplCopyWithImpl<$Res>
    extends _$GetUrlsStateCopyWithImpl<$Res, _$GetUrlsStateErrorImpl>
    implements _$$GetUrlsStateErrorImplCopyWith<$Res> {
  __$$GetUrlsStateErrorImplCopyWithImpl(_$GetUrlsStateErrorImpl _value,
      $Res Function(_$GetUrlsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$GetUrlsStateErrorImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as GetUrlException,
    ));
  }
}

/// @nodoc

class _$GetUrlsStateErrorImpl implements GetUrlsStateError {
  const _$GetUrlsStateErrorImpl(this.exception);

  @override
  final GetUrlException exception;

  @override
  String toString() {
    return 'GetUrlsState.failure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrlsStateErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUrlsStateErrorImplCopyWith<_$GetUrlsStateErrorImpl> get copyWith =>
      __$$GetUrlsStateErrorImplCopyWithImpl<_$GetUrlsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> urls) ready,
    required TResult Function(GetUrlException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> urls)? ready,
    TResult? Function(GetUrlException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> urls)? ready,
    TResult Function(GetUrlException exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrlsStateInitial value) initial,
    required TResult Function(GetUrlsStateLoading value) loading,
    required TResult Function(GetUrlsStateReady value) ready,
    required TResult Function(GetUrlsStateError value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrlsStateInitial value)? initial,
    TResult? Function(GetUrlsStateLoading value)? loading,
    TResult? Function(GetUrlsStateReady value)? ready,
    TResult? Function(GetUrlsStateError value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrlsStateInitial value)? initial,
    TResult Function(GetUrlsStateLoading value)? loading,
    TResult Function(GetUrlsStateReady value)? ready,
    TResult Function(GetUrlsStateError value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GetUrlsStateError implements GetUrlsState {
  const factory GetUrlsStateError(final GetUrlException exception) =
      _$GetUrlsStateErrorImpl;

  GetUrlException get exception;
  @JsonKey(ignore: true)
  _$$GetUrlsStateErrorImplCopyWith<_$GetUrlsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
