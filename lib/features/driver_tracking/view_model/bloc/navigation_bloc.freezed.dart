// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String driverId) fetchRoutes,
    required TResult Function(Store store) getRoute,
    required TResult Function(String driverId, Store store) updateVisitStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String driverId)? fetchRoutes,
    TResult? Function(Store store)? getRoute,
    TResult? Function(String driverId, Store store)? updateVisitStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String driverId)? fetchRoutes,
    TResult Function(Store store)? getRoute,
    TResult Function(String driverId, Store store)? updateVisitStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoutesEvent value) fetchRoutes,
    required TResult Function(GetRouteEvent value) getRoute,
    required TResult Function(UpdateVisitStatusEvent value) updateVisitStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoutesEvent value)? fetchRoutes,
    TResult? Function(GetRouteEvent value)? getRoute,
    TResult? Function(UpdateVisitStatusEvent value)? updateVisitStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoutesEvent value)? fetchRoutes,
    TResult Function(GetRouteEvent value)? getRoute,
    TResult Function(UpdateVisitStatusEvent value)? updateVisitStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchRoutesEventImplCopyWith<$Res> {
  factory _$$FetchRoutesEventImplCopyWith(_$FetchRoutesEventImpl value,
          $Res Function(_$FetchRoutesEventImpl) then) =
      __$$FetchRoutesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId});
}

/// @nodoc
class __$$FetchRoutesEventImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$FetchRoutesEventImpl>
    implements _$$FetchRoutesEventImplCopyWith<$Res> {
  __$$FetchRoutesEventImplCopyWithImpl(_$FetchRoutesEventImpl _value,
      $Res Function(_$FetchRoutesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$FetchRoutesEventImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchRoutesEventImpl implements FetchRoutesEvent {
  const _$FetchRoutesEventImpl(this.driverId);

  @override
  final String driverId;

  @override
  String toString() {
    return 'NavigationEvent.fetchRoutes(driverId: $driverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRoutesEventImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRoutesEventImplCopyWith<_$FetchRoutesEventImpl> get copyWith =>
      __$$FetchRoutesEventImplCopyWithImpl<_$FetchRoutesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String driverId) fetchRoutes,
    required TResult Function(Store store) getRoute,
    required TResult Function(String driverId, Store store) updateVisitStatus,
  }) {
    return fetchRoutes(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String driverId)? fetchRoutes,
    TResult? Function(Store store)? getRoute,
    TResult? Function(String driverId, Store store)? updateVisitStatus,
  }) {
    return fetchRoutes?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String driverId)? fetchRoutes,
    TResult Function(Store store)? getRoute,
    TResult Function(String driverId, Store store)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (fetchRoutes != null) {
      return fetchRoutes(driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoutesEvent value) fetchRoutes,
    required TResult Function(GetRouteEvent value) getRoute,
    required TResult Function(UpdateVisitStatusEvent value) updateVisitStatus,
  }) {
    return fetchRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoutesEvent value)? fetchRoutes,
    TResult? Function(GetRouteEvent value)? getRoute,
    TResult? Function(UpdateVisitStatusEvent value)? updateVisitStatus,
  }) {
    return fetchRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoutesEvent value)? fetchRoutes,
    TResult Function(GetRouteEvent value)? getRoute,
    TResult Function(UpdateVisitStatusEvent value)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (fetchRoutes != null) {
      return fetchRoutes(this);
    }
    return orElse();
  }
}

abstract class FetchRoutesEvent implements NavigationEvent {
  const factory FetchRoutesEvent(final String driverId) =
      _$FetchRoutesEventImpl;

  String get driverId;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRoutesEventImplCopyWith<_$FetchRoutesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRouteEventImplCopyWith<$Res> {
  factory _$$GetRouteEventImplCopyWith(
          _$GetRouteEventImpl value, $Res Function(_$GetRouteEventImpl) then) =
      __$$GetRouteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Store store});
}

/// @nodoc
class __$$GetRouteEventImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$GetRouteEventImpl>
    implements _$$GetRouteEventImplCopyWith<$Res> {
  __$$GetRouteEventImplCopyWithImpl(
      _$GetRouteEventImpl _value, $Res Function(_$GetRouteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$GetRouteEventImpl(
      null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
    ));
  }
}

/// @nodoc

class _$GetRouteEventImpl implements GetRouteEvent {
  const _$GetRouteEventImpl(this.store);

  @override
  final Store store;

  @override
  String toString() {
    return 'NavigationEvent.getRoute(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRouteEventImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRouteEventImplCopyWith<_$GetRouteEventImpl> get copyWith =>
      __$$GetRouteEventImplCopyWithImpl<_$GetRouteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String driverId) fetchRoutes,
    required TResult Function(Store store) getRoute,
    required TResult Function(String driverId, Store store) updateVisitStatus,
  }) {
    return getRoute(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String driverId)? fetchRoutes,
    TResult? Function(Store store)? getRoute,
    TResult? Function(String driverId, Store store)? updateVisitStatus,
  }) {
    return getRoute?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String driverId)? fetchRoutes,
    TResult Function(Store store)? getRoute,
    TResult Function(String driverId, Store store)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (getRoute != null) {
      return getRoute(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoutesEvent value) fetchRoutes,
    required TResult Function(GetRouteEvent value) getRoute,
    required TResult Function(UpdateVisitStatusEvent value) updateVisitStatus,
  }) {
    return getRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoutesEvent value)? fetchRoutes,
    TResult? Function(GetRouteEvent value)? getRoute,
    TResult? Function(UpdateVisitStatusEvent value)? updateVisitStatus,
  }) {
    return getRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoutesEvent value)? fetchRoutes,
    TResult Function(GetRouteEvent value)? getRoute,
    TResult Function(UpdateVisitStatusEvent value)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (getRoute != null) {
      return getRoute(this);
    }
    return orElse();
  }
}

abstract class GetRouteEvent implements NavigationEvent {
  const factory GetRouteEvent(final Store store) = _$GetRouteEventImpl;

  Store get store;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRouteEventImplCopyWith<_$GetRouteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateVisitStatusEventImplCopyWith<$Res> {
  factory _$$UpdateVisitStatusEventImplCopyWith(
          _$UpdateVisitStatusEventImpl value,
          $Res Function(_$UpdateVisitStatusEventImpl) then) =
      __$$UpdateVisitStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId, Store store});
}

/// @nodoc
class __$$UpdateVisitStatusEventImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$UpdateVisitStatusEventImpl>
    implements _$$UpdateVisitStatusEventImplCopyWith<$Res> {
  __$$UpdateVisitStatusEventImplCopyWithImpl(
      _$UpdateVisitStatusEventImpl _value,
      $Res Function(_$UpdateVisitStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
    Object? store = null,
  }) {
    return _then(_$UpdateVisitStatusEventImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
    ));
  }
}

/// @nodoc

class _$UpdateVisitStatusEventImpl implements UpdateVisitStatusEvent {
  const _$UpdateVisitStatusEventImpl(this.driverId, this.store);

  @override
  final String driverId;
  @override
  final Store store;

  @override
  String toString() {
    return 'NavigationEvent.updateVisitStatus(driverId: $driverId, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVisitStatusEventImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId, store);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVisitStatusEventImplCopyWith<_$UpdateVisitStatusEventImpl>
      get copyWith => __$$UpdateVisitStatusEventImplCopyWithImpl<
          _$UpdateVisitStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String driverId) fetchRoutes,
    required TResult Function(Store store) getRoute,
    required TResult Function(String driverId, Store store) updateVisitStatus,
  }) {
    return updateVisitStatus(driverId, store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String driverId)? fetchRoutes,
    TResult? Function(Store store)? getRoute,
    TResult? Function(String driverId, Store store)? updateVisitStatus,
  }) {
    return updateVisitStatus?.call(driverId, store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String driverId)? fetchRoutes,
    TResult Function(Store store)? getRoute,
    TResult Function(String driverId, Store store)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (updateVisitStatus != null) {
      return updateVisitStatus(driverId, store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoutesEvent value) fetchRoutes,
    required TResult Function(GetRouteEvent value) getRoute,
    required TResult Function(UpdateVisitStatusEvent value) updateVisitStatus,
  }) {
    return updateVisitStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoutesEvent value)? fetchRoutes,
    TResult? Function(GetRouteEvent value)? getRoute,
    TResult? Function(UpdateVisitStatusEvent value)? updateVisitStatus,
  }) {
    return updateVisitStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoutesEvent value)? fetchRoutes,
    TResult Function(GetRouteEvent value)? getRoute,
    TResult Function(UpdateVisitStatusEvent value)? updateVisitStatus,
    required TResult orElse(),
  }) {
    if (updateVisitStatus != null) {
      return updateVisitStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateVisitStatusEvent implements NavigationEvent {
  const factory UpdateVisitStatusEvent(
      final String driverId, final Store store) = _$UpdateVisitStatusEventImpl;

  String get driverId;
  Store get store;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateVisitStatusEventImplCopyWith<_$UpdateVisitStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LatLng currentLocation,
            List<Polyline<Object>> polylines,
            Set<Marker> markers,
            List<Store> stores)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationLoading value) loading,
    required TResult Function(NavigationLoaded value) loaded,
    required TResult Function(NavigationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationLoading value)? loading,
    TResult? Function(NavigationLoaded value)? loaded,
    TResult? Function(NavigationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationLoading value)? loading,
    TResult Function(NavigationLoaded value)? loaded,
    TResult Function(NavigationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigationLoadingImplCopyWith<$Res> {
  factory _$$NavigationLoadingImplCopyWith(_$NavigationLoadingImpl value,
          $Res Function(_$NavigationLoadingImpl) then) =
      __$$NavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationLoadingImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationLoadingImpl>
    implements _$$NavigationLoadingImplCopyWith<$Res> {
  __$$NavigationLoadingImplCopyWithImpl(_$NavigationLoadingImpl _value,
      $Res Function(_$NavigationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigationLoadingImpl implements NavigationLoading {
  const _$NavigationLoadingImpl();

  @override
  String toString() {
    return 'NavigationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LatLng currentLocation,
            List<Polyline<Object>> polylines,
            Set<Marker> markers,
            List<Store> stores)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(NavigationLoading value) loading,
    required TResult Function(NavigationLoaded value) loaded,
    required TResult Function(NavigationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationLoading value)? loading,
    TResult? Function(NavigationLoaded value)? loaded,
    TResult? Function(NavigationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationLoading value)? loading,
    TResult Function(NavigationLoaded value)? loaded,
    TResult Function(NavigationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NavigationLoading implements NavigationState {
  const factory NavigationLoading() = _$NavigationLoadingImpl;
}

/// @nodoc
abstract class _$$NavigationLoadedImplCopyWith<$Res> {
  factory _$$NavigationLoadedImplCopyWith(_$NavigationLoadedImpl value,
          $Res Function(_$NavigationLoadedImpl) then) =
      __$$NavigationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LatLng currentLocation,
      List<Polyline<Object>> polylines,
      Set<Marker> markers,
      List<Store> stores});
}

/// @nodoc
class __$$NavigationLoadedImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationLoadedImpl>
    implements _$$NavigationLoadedImplCopyWith<$Res> {
  __$$NavigationLoadedImplCopyWithImpl(_$NavigationLoadedImpl _value,
      $Res Function(_$NavigationLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? polylines = null,
    Object? markers = null,
    Object? stores = null,
  }) {
    return _then(_$NavigationLoadedImpl(
      null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      null == polylines
          ? _value._polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as List<Polyline<Object>>,
      null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
    ));
  }
}

/// @nodoc

class _$NavigationLoadedImpl implements NavigationLoaded {
  const _$NavigationLoadedImpl(
      this.currentLocation,
      final List<Polyline<Object>> polylines,
      final Set<Marker> markers,
      final List<Store> stores)
      : _polylines = polylines,
        _markers = markers,
        _stores = stores;

  @override
  final LatLng currentLocation;
  final List<Polyline<Object>> _polylines;
  @override
  List<Polyline<Object>> get polylines {
    if (_polylines is EqualUnmodifiableListView) return _polylines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylines);
  }

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  final List<Store> _stores;
  @override
  List<Store> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'NavigationState.loaded(currentLocation: $currentLocation, polylines: $polylines, markers: $markers, stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationLoadedImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            const DeepCollectionEquality()
                .equals(other._polylines, _polylines) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentLocation,
      const DeepCollectionEquality().hash(_polylines),
      const DeepCollectionEquality().hash(_markers),
      const DeepCollectionEquality().hash(_stores));

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationLoadedImplCopyWith<_$NavigationLoadedImpl> get copyWith =>
      __$$NavigationLoadedImplCopyWithImpl<_$NavigationLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LatLng currentLocation,
            List<Polyline<Object>> polylines,
            Set<Marker> markers,
            List<Store> stores)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(currentLocation, polylines, markers, stores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(currentLocation, polylines, markers, stores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentLocation, polylines, markers, stores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationLoading value) loading,
    required TResult Function(NavigationLoaded value) loaded,
    required TResult Function(NavigationError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationLoading value)? loading,
    TResult? Function(NavigationLoaded value)? loaded,
    TResult? Function(NavigationError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationLoading value)? loading,
    TResult Function(NavigationLoaded value)? loaded,
    TResult Function(NavigationError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NavigationLoaded implements NavigationState {
  const factory NavigationLoaded(
      final LatLng currentLocation,
      final List<Polyline<Object>> polylines,
      final Set<Marker> markers,
      final List<Store> stores) = _$NavigationLoadedImpl;

  LatLng get currentLocation;
  List<Polyline<Object>> get polylines;
  Set<Marker> get markers;
  List<Store> get stores;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationLoadedImplCopyWith<_$NavigationLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigationErrorImplCopyWith<$Res> {
  factory _$$NavigationErrorImplCopyWith(_$NavigationErrorImpl value,
          $Res Function(_$NavigationErrorImpl) then) =
      __$$NavigationErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationErrorImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationErrorImpl>
    implements _$$NavigationErrorImplCopyWith<$Res> {
  __$$NavigationErrorImplCopyWithImpl(
      _$NavigationErrorImpl _value, $Res Function(_$NavigationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigationErrorImpl implements NavigationError {
  const _$NavigationErrorImpl();

  @override
  String toString() {
    return 'NavigationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            LatLng currentLocation,
            List<Polyline<Object>> polylines,
            Set<Marker> markers,
            List<Store> stores)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng currentLocation, List<Polyline<Object>> polylines,
            Set<Marker> markers, List<Store> stores)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationLoading value) loading,
    required TResult Function(NavigationLoaded value) loaded,
    required TResult Function(NavigationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationLoading value)? loading,
    TResult? Function(NavigationLoaded value)? loaded,
    TResult? Function(NavigationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationLoading value)? loading,
    TResult Function(NavigationLoaded value)? loaded,
    TResult Function(NavigationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NavigationError implements NavigationState {
  const factory NavigationError() = _$NavigationErrorImpl;
}
