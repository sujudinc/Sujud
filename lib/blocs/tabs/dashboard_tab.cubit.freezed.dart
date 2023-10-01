// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_tab.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Mosque selectedMosque) ready,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(Mosque selectedMosque)? ready,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Mosque selectedMosque)? ready,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardTabStateLoading value) loading,
    required TResult Function(DashboardTabStateEmpty value) empty,
    required TResult Function(DashboardTabStateReady value) ready,
    required TResult Function(DashboardTabStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardTabStateLoading value)? loading,
    TResult? Function(DashboardTabStateEmpty value)? empty,
    TResult? Function(DashboardTabStateReady value)? ready,
    TResult? Function(DashboardTabStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardTabStateLoading value)? loading,
    TResult Function(DashboardTabStateEmpty value)? empty,
    TResult Function(DashboardTabStateReady value)? ready,
    TResult Function(DashboardTabStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardTabStateCopyWith<$Res> {
  factory $DashboardTabStateCopyWith(
          DashboardTabState value, $Res Function(DashboardTabState) then) =
      _$DashboardTabStateCopyWithImpl<$Res, DashboardTabState>;
}

/// @nodoc
class _$DashboardTabStateCopyWithImpl<$Res, $Val extends DashboardTabState>
    implements $DashboardTabStateCopyWith<$Res> {
  _$DashboardTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardTabStateLoadingCopyWith<$Res> {
  factory _$$DashboardTabStateLoadingCopyWith(_$DashboardTabStateLoading value,
          $Res Function(_$DashboardTabStateLoading) then) =
      __$$DashboardTabStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardTabStateLoadingCopyWithImpl<$Res>
    extends _$DashboardTabStateCopyWithImpl<$Res, _$DashboardTabStateLoading>
    implements _$$DashboardTabStateLoadingCopyWith<$Res> {
  __$$DashboardTabStateLoadingCopyWithImpl(_$DashboardTabStateLoading _value,
      $Res Function(_$DashboardTabStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardTabStateLoading implements DashboardTabStateLoading {
  const _$DashboardTabStateLoading();

  @override
  String toString() {
    return 'DashboardTabState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardTabStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Mosque selectedMosque) ready,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(Mosque selectedMosque)? ready,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Mosque selectedMosque)? ready,
    TResult Function()? failure,
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
    required TResult Function(DashboardTabStateLoading value) loading,
    required TResult Function(DashboardTabStateEmpty value) empty,
    required TResult Function(DashboardTabStateReady value) ready,
    required TResult Function(DashboardTabStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardTabStateLoading value)? loading,
    TResult? Function(DashboardTabStateEmpty value)? empty,
    TResult? Function(DashboardTabStateReady value)? ready,
    TResult? Function(DashboardTabStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardTabStateLoading value)? loading,
    TResult Function(DashboardTabStateEmpty value)? empty,
    TResult Function(DashboardTabStateReady value)? ready,
    TResult Function(DashboardTabStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardTabStateLoading implements DashboardTabState {
  const factory DashboardTabStateLoading() = _$DashboardTabStateLoading;
}

/// @nodoc
abstract class _$$DashboardTabStateEmptyCopyWith<$Res> {
  factory _$$DashboardTabStateEmptyCopyWith(_$DashboardTabStateEmpty value,
          $Res Function(_$DashboardTabStateEmpty) then) =
      __$$DashboardTabStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardTabStateEmptyCopyWithImpl<$Res>
    extends _$DashboardTabStateCopyWithImpl<$Res, _$DashboardTabStateEmpty>
    implements _$$DashboardTabStateEmptyCopyWith<$Res> {
  __$$DashboardTabStateEmptyCopyWithImpl(_$DashboardTabStateEmpty _value,
      $Res Function(_$DashboardTabStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardTabStateEmpty implements DashboardTabStateEmpty {
  const _$DashboardTabStateEmpty();

  @override
  String toString() {
    return 'DashboardTabState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardTabStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Mosque selectedMosque) ready,
    required TResult Function() failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(Mosque selectedMosque)? ready,
    TResult? Function()? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Mosque selectedMosque)? ready,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardTabStateLoading value) loading,
    required TResult Function(DashboardTabStateEmpty value) empty,
    required TResult Function(DashboardTabStateReady value) ready,
    required TResult Function(DashboardTabStateFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardTabStateLoading value)? loading,
    TResult? Function(DashboardTabStateEmpty value)? empty,
    TResult? Function(DashboardTabStateReady value)? ready,
    TResult? Function(DashboardTabStateFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardTabStateLoading value)? loading,
    TResult Function(DashboardTabStateEmpty value)? empty,
    TResult Function(DashboardTabStateReady value)? ready,
    TResult Function(DashboardTabStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class DashboardTabStateEmpty implements DashboardTabState {
  const factory DashboardTabStateEmpty() = _$DashboardTabStateEmpty;
}

/// @nodoc
abstract class _$$DashboardTabStateReadyCopyWith<$Res> {
  factory _$$DashboardTabStateReadyCopyWith(_$DashboardTabStateReady value,
          $Res Function(_$DashboardTabStateReady) then) =
      __$$DashboardTabStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({Mosque selectedMosque});
}

/// @nodoc
class __$$DashboardTabStateReadyCopyWithImpl<$Res>
    extends _$DashboardTabStateCopyWithImpl<$Res, _$DashboardTabStateReady>
    implements _$$DashboardTabStateReadyCopyWith<$Res> {
  __$$DashboardTabStateReadyCopyWithImpl(_$DashboardTabStateReady _value,
      $Res Function(_$DashboardTabStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMosque = null,
  }) {
    return _then(_$DashboardTabStateReady(
      selectedMosque: null == selectedMosque
          ? _value.selectedMosque
          : selectedMosque // ignore: cast_nullable_to_non_nullable
              as Mosque,
    ));
  }
}

/// @nodoc

class _$DashboardTabStateReady implements DashboardTabStateReady {
  const _$DashboardTabStateReady({required this.selectedMosque});

  @override
  final Mosque selectedMosque;

  @override
  String toString() {
    return 'DashboardTabState.ready(selectedMosque: $selectedMosque)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardTabStateReady &&
            (identical(other.selectedMosque, selectedMosque) ||
                other.selectedMosque == selectedMosque));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedMosque);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardTabStateReadyCopyWith<_$DashboardTabStateReady> get copyWith =>
      __$$DashboardTabStateReadyCopyWithImpl<_$DashboardTabStateReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Mosque selectedMosque) ready,
    required TResult Function() failure,
  }) {
    return ready(selectedMosque);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(Mosque selectedMosque)? ready,
    TResult? Function()? failure,
  }) {
    return ready?.call(selectedMosque);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Mosque selectedMosque)? ready,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(selectedMosque);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardTabStateLoading value) loading,
    required TResult Function(DashboardTabStateEmpty value) empty,
    required TResult Function(DashboardTabStateReady value) ready,
    required TResult Function(DashboardTabStateFailure value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardTabStateLoading value)? loading,
    TResult? Function(DashboardTabStateEmpty value)? empty,
    TResult? Function(DashboardTabStateReady value)? ready,
    TResult? Function(DashboardTabStateFailure value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardTabStateLoading value)? loading,
    TResult Function(DashboardTabStateEmpty value)? empty,
    TResult Function(DashboardTabStateReady value)? ready,
    TResult Function(DashboardTabStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class DashboardTabStateReady implements DashboardTabState {
  const factory DashboardTabStateReady({required final Mosque selectedMosque}) =
      _$DashboardTabStateReady;

  Mosque get selectedMosque;
  @JsonKey(ignore: true)
  _$$DashboardTabStateReadyCopyWith<_$DashboardTabStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardTabStateFailureCopyWith<$Res> {
  factory _$$DashboardTabStateFailureCopyWith(_$DashboardTabStateFailure value,
          $Res Function(_$DashboardTabStateFailure) then) =
      __$$DashboardTabStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardTabStateFailureCopyWithImpl<$Res>
    extends _$DashboardTabStateCopyWithImpl<$Res, _$DashboardTabStateFailure>
    implements _$$DashboardTabStateFailureCopyWith<$Res> {
  __$$DashboardTabStateFailureCopyWithImpl(_$DashboardTabStateFailure _value,
      $Res Function(_$DashboardTabStateFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardTabStateFailure implements DashboardTabStateFailure {
  const _$DashboardTabStateFailure();

  @override
  String toString() {
    return 'DashboardTabState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardTabStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(Mosque selectedMosque) ready,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(Mosque selectedMosque)? ready,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(Mosque selectedMosque)? ready,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardTabStateLoading value) loading,
    required TResult Function(DashboardTabStateEmpty value) empty,
    required TResult Function(DashboardTabStateReady value) ready,
    required TResult Function(DashboardTabStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardTabStateLoading value)? loading,
    TResult? Function(DashboardTabStateEmpty value)? empty,
    TResult? Function(DashboardTabStateReady value)? ready,
    TResult? Function(DashboardTabStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardTabStateLoading value)? loading,
    TResult Function(DashboardTabStateEmpty value)? empty,
    TResult Function(DashboardTabStateReady value)? ready,
    TResult Function(DashboardTabStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DashboardTabStateFailure implements DashboardTabState {
  const factory DashboardTabStateFailure() = _$DashboardTabStateFailure;
}
