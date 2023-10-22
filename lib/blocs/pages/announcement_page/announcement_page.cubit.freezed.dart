// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_page.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnouncementPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Announcement announcement) ready,
    required TResult Function(AnnouncementPageException exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Announcement announcement)? ready,
    TResult? Function(AnnouncementPageException exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Announcement announcement)? ready,
    TResult Function(AnnouncementPageException exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnnouncementPageStateLoading value) loading,
    required TResult Function(AnnouncementPageStateReady value) ready,
    required TResult Function(AnnouncementPageStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnnouncementPageStateLoading value)? loading,
    TResult? Function(AnnouncementPageStateReady value)? ready,
    TResult? Function(AnnouncementPageStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnnouncementPageStateLoading value)? loading,
    TResult Function(AnnouncementPageStateReady value)? ready,
    TResult Function(AnnouncementPageStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementPageStateCopyWith<$Res> {
  factory $AnnouncementPageStateCopyWith(AnnouncementPageState value,
          $Res Function(AnnouncementPageState) then) =
      _$AnnouncementPageStateCopyWithImpl<$Res, AnnouncementPageState>;
}

/// @nodoc
class _$AnnouncementPageStateCopyWithImpl<$Res,
        $Val extends AnnouncementPageState>
    implements $AnnouncementPageStateCopyWith<$Res> {
  _$AnnouncementPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnnouncementPageStateLoadingCopyWith<$Res> {
  factory _$$AnnouncementPageStateLoadingCopyWith(
          _$AnnouncementPageStateLoading value,
          $Res Function(_$AnnouncementPageStateLoading) then) =
      __$$AnnouncementPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnnouncementPageStateLoadingCopyWithImpl<$Res>
    extends _$AnnouncementPageStateCopyWithImpl<$Res,
        _$AnnouncementPageStateLoading>
    implements _$$AnnouncementPageStateLoadingCopyWith<$Res> {
  __$$AnnouncementPageStateLoadingCopyWithImpl(
      _$AnnouncementPageStateLoading _value,
      $Res Function(_$AnnouncementPageStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnnouncementPageStateLoading implements AnnouncementPageStateLoading {
  const _$AnnouncementPageStateLoading();

  @override
  String toString() {
    return 'AnnouncementPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Announcement announcement) ready,
    required TResult Function(AnnouncementPageException exception) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Announcement announcement)? ready,
    TResult? Function(AnnouncementPageException exception)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Announcement announcement)? ready,
    TResult Function(AnnouncementPageException exception)? failure,
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
    required TResult Function(AnnouncementPageStateLoading value) loading,
    required TResult Function(AnnouncementPageStateReady value) ready,
    required TResult Function(AnnouncementPageStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnnouncementPageStateLoading value)? loading,
    TResult? Function(AnnouncementPageStateReady value)? ready,
    TResult? Function(AnnouncementPageStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnnouncementPageStateLoading value)? loading,
    TResult Function(AnnouncementPageStateReady value)? ready,
    TResult Function(AnnouncementPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AnnouncementPageStateLoading implements AnnouncementPageState {
  const factory AnnouncementPageStateLoading() = _$AnnouncementPageStateLoading;
}

/// @nodoc
abstract class _$$AnnouncementPageStateReadyCopyWith<$Res> {
  factory _$$AnnouncementPageStateReadyCopyWith(
          _$AnnouncementPageStateReady value,
          $Res Function(_$AnnouncementPageStateReady) then) =
      __$$AnnouncementPageStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({Announcement announcement});
}

/// @nodoc
class __$$AnnouncementPageStateReadyCopyWithImpl<$Res>
    extends _$AnnouncementPageStateCopyWithImpl<$Res,
        _$AnnouncementPageStateReady>
    implements _$$AnnouncementPageStateReadyCopyWith<$Res> {
  __$$AnnouncementPageStateReadyCopyWithImpl(
      _$AnnouncementPageStateReady _value,
      $Res Function(_$AnnouncementPageStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcement = null,
  }) {
    return _then(_$AnnouncementPageStateReady(
      announcement: null == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as Announcement,
    ));
  }
}

/// @nodoc

class _$AnnouncementPageStateReady implements AnnouncementPageStateReady {
  const _$AnnouncementPageStateReady({required this.announcement});

  @override
  final Announcement announcement;

  @override
  String toString() {
    return 'AnnouncementPageState.ready(announcement: $announcement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementPageStateReady &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementPageStateReadyCopyWith<_$AnnouncementPageStateReady>
      get copyWith => __$$AnnouncementPageStateReadyCopyWithImpl<
          _$AnnouncementPageStateReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Announcement announcement) ready,
    required TResult Function(AnnouncementPageException exception) failure,
  }) {
    return ready(announcement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Announcement announcement)? ready,
    TResult? Function(AnnouncementPageException exception)? failure,
  }) {
    return ready?.call(announcement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Announcement announcement)? ready,
    TResult Function(AnnouncementPageException exception)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(announcement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnnouncementPageStateLoading value) loading,
    required TResult Function(AnnouncementPageStateReady value) ready,
    required TResult Function(AnnouncementPageStateFailure value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnnouncementPageStateLoading value)? loading,
    TResult? Function(AnnouncementPageStateReady value)? ready,
    TResult? Function(AnnouncementPageStateFailure value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnnouncementPageStateLoading value)? loading,
    TResult Function(AnnouncementPageStateReady value)? ready,
    TResult Function(AnnouncementPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AnnouncementPageStateReady implements AnnouncementPageState {
  const factory AnnouncementPageStateReady(
          {required final Announcement announcement}) =
      _$AnnouncementPageStateReady;

  Announcement get announcement;
  @JsonKey(ignore: true)
  _$$AnnouncementPageStateReadyCopyWith<_$AnnouncementPageStateReady>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnnouncementPageStateFailureCopyWith<$Res> {
  factory _$$AnnouncementPageStateFailureCopyWith(
          _$AnnouncementPageStateFailure value,
          $Res Function(_$AnnouncementPageStateFailure) then) =
      __$$AnnouncementPageStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AnnouncementPageException exception});
}

/// @nodoc
class __$$AnnouncementPageStateFailureCopyWithImpl<$Res>
    extends _$AnnouncementPageStateCopyWithImpl<$Res,
        _$AnnouncementPageStateFailure>
    implements _$$AnnouncementPageStateFailureCopyWith<$Res> {
  __$$AnnouncementPageStateFailureCopyWithImpl(
      _$AnnouncementPageStateFailure _value,
      $Res Function(_$AnnouncementPageStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AnnouncementPageStateFailure(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AnnouncementPageException,
    ));
  }
}

/// @nodoc

class _$AnnouncementPageStateFailure implements AnnouncementPageStateFailure {
  const _$AnnouncementPageStateFailure({required this.exception});

  @override
  final AnnouncementPageException exception;

  @override
  String toString() {
    return 'AnnouncementPageState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementPageStateFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementPageStateFailureCopyWith<_$AnnouncementPageStateFailure>
      get copyWith => __$$AnnouncementPageStateFailureCopyWithImpl<
          _$AnnouncementPageStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Announcement announcement) ready,
    required TResult Function(AnnouncementPageException exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Announcement announcement)? ready,
    TResult? Function(AnnouncementPageException exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Announcement announcement)? ready,
    TResult Function(AnnouncementPageException exception)? failure,
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
    required TResult Function(AnnouncementPageStateLoading value) loading,
    required TResult Function(AnnouncementPageStateReady value) ready,
    required TResult Function(AnnouncementPageStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnnouncementPageStateLoading value)? loading,
    TResult? Function(AnnouncementPageStateReady value)? ready,
    TResult? Function(AnnouncementPageStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnnouncementPageStateLoading value)? loading,
    TResult Function(AnnouncementPageStateReady value)? ready,
    TResult Function(AnnouncementPageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AnnouncementPageStateFailure implements AnnouncementPageState {
  const factory AnnouncementPageStateFailure(
          {required final AnnouncementPageException exception}) =
      _$AnnouncementPageStateFailure;

  AnnouncementPageException get exception;
  @JsonKey(ignore: true)
  _$$AnnouncementPageStateFailureCopyWith<_$AnnouncementPageStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
