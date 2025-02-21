// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store driver) addStore,
    required TResult Function(String driverId) removeStore,
    required TResult Function(String driverId, Store driver) updateStore,
    required TResult Function() fetchAllStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store driver)? addStore,
    TResult? Function(String driverId)? removeStore,
    TResult? Function(String driverId, Store driver)? updateStore,
    TResult? Function()? fetchAllStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store driver)? addStore,
    TResult Function(String driverId)? removeStore,
    TResult Function(String driverId, Store driver)? updateStore,
    TResult Function()? fetchAllStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_RemoveStore value) removeStore,
    required TResult Function(_UpdateStore value) updateStore,
    required TResult Function(_FetchAllStores value) fetchAllStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_RemoveStore value)? removeStore,
    TResult? Function(_UpdateStore value)? updateStore,
    TResult? Function(_FetchAllStores value)? fetchAllStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStore value)? addStore,
    TResult Function(_RemoveStore value)? removeStore,
    TResult Function(_UpdateStore value)? updateStore,
    TResult Function(_FetchAllStores value)? fetchAllStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresEventCopyWith<$Res> {
  factory $StoresEventCopyWith(
          StoresEvent value, $Res Function(StoresEvent) then) =
      _$StoresEventCopyWithImpl<$Res, StoresEvent>;
}

/// @nodoc
class _$StoresEventCopyWithImpl<$Res, $Val extends StoresEvent>
    implements $StoresEventCopyWith<$Res> {
  _$StoresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddStoreImplCopyWith<$Res> {
  factory _$$AddStoreImplCopyWith(
          _$AddStoreImpl value, $Res Function(_$AddStoreImpl) then) =
      __$$AddStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Store driver});
}

/// @nodoc
class __$$AddStoreImplCopyWithImpl<$Res>
    extends _$StoresEventCopyWithImpl<$Res, _$AddStoreImpl>
    implements _$$AddStoreImplCopyWith<$Res> {
  __$$AddStoreImplCopyWithImpl(
      _$AddStoreImpl _value, $Res Function(_$AddStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
  }) {
    return _then(_$AddStoreImpl(
      null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Store,
    ));
  }
}

/// @nodoc

class _$AddStoreImpl implements _AddStore {
  const _$AddStoreImpl(this.driver);

  @override
  final Store driver;

  @override
  String toString() {
    return 'StoresEvent.addStore(driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoreImpl &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driver);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoreImplCopyWith<_$AddStoreImpl> get copyWith =>
      __$$AddStoreImplCopyWithImpl<_$AddStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store driver) addStore,
    required TResult Function(String driverId) removeStore,
    required TResult Function(String driverId, Store driver) updateStore,
    required TResult Function() fetchAllStores,
  }) {
    return addStore(driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store driver)? addStore,
    TResult? Function(String driverId)? removeStore,
    TResult? Function(String driverId, Store driver)? updateStore,
    TResult? Function()? fetchAllStores,
  }) {
    return addStore?.call(driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store driver)? addStore,
    TResult Function(String driverId)? removeStore,
    TResult Function(String driverId, Store driver)? updateStore,
    TResult Function()? fetchAllStores,
    required TResult orElse(),
  }) {
    if (addStore != null) {
      return addStore(driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_RemoveStore value) removeStore,
    required TResult Function(_UpdateStore value) updateStore,
    required TResult Function(_FetchAllStores value) fetchAllStores,
  }) {
    return addStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_RemoveStore value)? removeStore,
    TResult? Function(_UpdateStore value)? updateStore,
    TResult? Function(_FetchAllStores value)? fetchAllStores,
  }) {
    return addStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStore value)? addStore,
    TResult Function(_RemoveStore value)? removeStore,
    TResult Function(_UpdateStore value)? updateStore,
    TResult Function(_FetchAllStores value)? fetchAllStores,
    required TResult orElse(),
  }) {
    if (addStore != null) {
      return addStore(this);
    }
    return orElse();
  }
}

abstract class _AddStore implements StoresEvent {
  const factory _AddStore(final Store driver) = _$AddStoreImpl;

  Store get driver;

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStoreImplCopyWith<_$AddStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveStoreImplCopyWith<$Res> {
  factory _$$RemoveStoreImplCopyWith(
          _$RemoveStoreImpl value, $Res Function(_$RemoveStoreImpl) then) =
      __$$RemoveStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId});
}

/// @nodoc
class __$$RemoveStoreImplCopyWithImpl<$Res>
    extends _$StoresEventCopyWithImpl<$Res, _$RemoveStoreImpl>
    implements _$$RemoveStoreImplCopyWith<$Res> {
  __$$RemoveStoreImplCopyWithImpl(
      _$RemoveStoreImpl _value, $Res Function(_$RemoveStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$RemoveStoreImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveStoreImpl implements _RemoveStore {
  const _$RemoveStoreImpl(this.driverId);

  @override
  final String driverId;

  @override
  String toString() {
    return 'StoresEvent.removeStore(driverId: $driverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStoreImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveStoreImplCopyWith<_$RemoveStoreImpl> get copyWith =>
      __$$RemoveStoreImplCopyWithImpl<_$RemoveStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store driver) addStore,
    required TResult Function(String driverId) removeStore,
    required TResult Function(String driverId, Store driver) updateStore,
    required TResult Function() fetchAllStores,
  }) {
    return removeStore(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store driver)? addStore,
    TResult? Function(String driverId)? removeStore,
    TResult? Function(String driverId, Store driver)? updateStore,
    TResult? Function()? fetchAllStores,
  }) {
    return removeStore?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store driver)? addStore,
    TResult Function(String driverId)? removeStore,
    TResult Function(String driverId, Store driver)? updateStore,
    TResult Function()? fetchAllStores,
    required TResult orElse(),
  }) {
    if (removeStore != null) {
      return removeStore(driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_RemoveStore value) removeStore,
    required TResult Function(_UpdateStore value) updateStore,
    required TResult Function(_FetchAllStores value) fetchAllStores,
  }) {
    return removeStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_RemoveStore value)? removeStore,
    TResult? Function(_UpdateStore value)? updateStore,
    TResult? Function(_FetchAllStores value)? fetchAllStores,
  }) {
    return removeStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStore value)? addStore,
    TResult Function(_RemoveStore value)? removeStore,
    TResult Function(_UpdateStore value)? updateStore,
    TResult Function(_FetchAllStores value)? fetchAllStores,
    required TResult orElse(),
  }) {
    if (removeStore != null) {
      return removeStore(this);
    }
    return orElse();
  }
}

abstract class _RemoveStore implements StoresEvent {
  const factory _RemoveStore(final String driverId) = _$RemoveStoreImpl;

  String get driverId;

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveStoreImplCopyWith<_$RemoveStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStoreImplCopyWith<$Res> {
  factory _$$UpdateStoreImplCopyWith(
          _$UpdateStoreImpl value, $Res Function(_$UpdateStoreImpl) then) =
      __$$UpdateStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId, Store driver});
}

/// @nodoc
class __$$UpdateStoreImplCopyWithImpl<$Res>
    extends _$StoresEventCopyWithImpl<$Res, _$UpdateStoreImpl>
    implements _$$UpdateStoreImplCopyWith<$Res> {
  __$$UpdateStoreImplCopyWithImpl(
      _$UpdateStoreImpl _value, $Res Function(_$UpdateStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
    Object? driver = null,
  }) {
    return _then(_$UpdateStoreImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Store,
    ));
  }
}

/// @nodoc

class _$UpdateStoreImpl implements _UpdateStore {
  const _$UpdateStoreImpl(this.driverId, this.driver);

  @override
  final String driverId;
  @override
  final Store driver;

  @override
  String toString() {
    return 'StoresEvent.updateStore(driverId: $driverId, driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStoreImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId, driver);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStoreImplCopyWith<_$UpdateStoreImpl> get copyWith =>
      __$$UpdateStoreImplCopyWithImpl<_$UpdateStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store driver) addStore,
    required TResult Function(String driverId) removeStore,
    required TResult Function(String driverId, Store driver) updateStore,
    required TResult Function() fetchAllStores,
  }) {
    return updateStore(driverId, driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store driver)? addStore,
    TResult? Function(String driverId)? removeStore,
    TResult? Function(String driverId, Store driver)? updateStore,
    TResult? Function()? fetchAllStores,
  }) {
    return updateStore?.call(driverId, driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store driver)? addStore,
    TResult Function(String driverId)? removeStore,
    TResult Function(String driverId, Store driver)? updateStore,
    TResult Function()? fetchAllStores,
    required TResult orElse(),
  }) {
    if (updateStore != null) {
      return updateStore(driverId, driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_RemoveStore value) removeStore,
    required TResult Function(_UpdateStore value) updateStore,
    required TResult Function(_FetchAllStores value) fetchAllStores,
  }) {
    return updateStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_RemoveStore value)? removeStore,
    TResult? Function(_UpdateStore value)? updateStore,
    TResult? Function(_FetchAllStores value)? fetchAllStores,
  }) {
    return updateStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStore value)? addStore,
    TResult Function(_RemoveStore value)? removeStore,
    TResult Function(_UpdateStore value)? updateStore,
    TResult Function(_FetchAllStores value)? fetchAllStores,
    required TResult orElse(),
  }) {
    if (updateStore != null) {
      return updateStore(this);
    }
    return orElse();
  }
}

abstract class _UpdateStore implements StoresEvent {
  const factory _UpdateStore(final String driverId, final Store driver) =
      _$UpdateStoreImpl;

  String get driverId;
  Store get driver;

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStoreImplCopyWith<_$UpdateStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllStoresImplCopyWith<$Res> {
  factory _$$FetchAllStoresImplCopyWith(_$FetchAllStoresImpl value,
          $Res Function(_$FetchAllStoresImpl) then) =
      __$$FetchAllStoresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllStoresImplCopyWithImpl<$Res>
    extends _$StoresEventCopyWithImpl<$Res, _$FetchAllStoresImpl>
    implements _$$FetchAllStoresImplCopyWith<$Res> {
  __$$FetchAllStoresImplCopyWithImpl(
      _$FetchAllStoresImpl _value, $Res Function(_$FetchAllStoresImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllStoresImpl implements _FetchAllStores {
  const _$FetchAllStoresImpl();

  @override
  String toString() {
    return 'StoresEvent.fetchAllStores()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllStoresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store driver) addStore,
    required TResult Function(String driverId) removeStore,
    required TResult Function(String driverId, Store driver) updateStore,
    required TResult Function() fetchAllStores,
  }) {
    return fetchAllStores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store driver)? addStore,
    TResult? Function(String driverId)? removeStore,
    TResult? Function(String driverId, Store driver)? updateStore,
    TResult? Function()? fetchAllStores,
  }) {
    return fetchAllStores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store driver)? addStore,
    TResult Function(String driverId)? removeStore,
    TResult Function(String driverId, Store driver)? updateStore,
    TResult Function()? fetchAllStores,
    required TResult orElse(),
  }) {
    if (fetchAllStores != null) {
      return fetchAllStores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStore value) addStore,
    required TResult Function(_RemoveStore value) removeStore,
    required TResult Function(_UpdateStore value) updateStore,
    required TResult Function(_FetchAllStores value) fetchAllStores,
  }) {
    return fetchAllStores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStore value)? addStore,
    TResult? Function(_RemoveStore value)? removeStore,
    TResult? Function(_UpdateStore value)? updateStore,
    TResult? Function(_FetchAllStores value)? fetchAllStores,
  }) {
    return fetchAllStores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStore value)? addStore,
    TResult Function(_RemoveStore value)? removeStore,
    TResult Function(_UpdateStore value)? updateStore,
    TResult Function(_FetchAllStores value)? fetchAllStores,
    required TResult orElse(),
  }) {
    if (fetchAllStores != null) {
      return fetchAllStores(this);
    }
    return orElse();
  }
}

abstract class _FetchAllStores implements StoresEvent {
  const factory _FetchAllStores() = _$FetchAllStoresImpl;
}

/// @nodoc
mixin _$StoresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Store> stores) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Store> stores)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Store> stores)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresStateCopyWith<$Res> {
  factory $StoresStateCopyWith(
          StoresState value, $Res Function(StoresState) then) =
      _$StoresStateCopyWithImpl<$Res, StoresState>;
}

/// @nodoc
class _$StoresStateCopyWithImpl<$Res, $Val extends StoresState>
    implements $StoresStateCopyWith<$Res> {
  _$StoresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StoresStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StoresState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Store> stores) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Store> stores)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Store> stores)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StoresState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Store> stores});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$StoresStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(final List<Store> stores) : _stores = stores;

  final List<Store> _stores;
  @override
  List<Store> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'StoresState.loadedState(stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Store> stores) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return loadedState(stores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Store> stores)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return loadedState?.call(stores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Store> stores)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(stores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements StoresState {
  const factory _LoadedState(final List<Store> stores) = _$LoadedStateImpl;

  List<Store> get stores;

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$StoresStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'StoresState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Store> stores) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Store> stores)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Store> stores)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements StoresState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$StoresStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'StoresState.errorState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Store> stores) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Store> stores)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Store> stores)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements StoresState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
