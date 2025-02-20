// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drivers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DriversEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Driver driver) addDriver,
    required TResult Function(String driverId) removeDriver,
    required TResult Function(String driverId, Driver driver) updateDriver,
    required TResult Function() fetchAllDrivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Driver driver)? addDriver,
    TResult? Function(String driverId)? removeDriver,
    TResult? Function(String driverId, Driver driver)? updateDriver,
    TResult? Function()? fetchAllDrivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Driver driver)? addDriver,
    TResult Function(String driverId)? removeDriver,
    TResult Function(String driverId, Driver driver)? updateDriver,
    TResult Function()? fetchAllDrivers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDriver value) addDriver,
    required TResult Function(_RemoveDriver value) removeDriver,
    required TResult Function(_UpdateDriver value) updateDriver,
    required TResult Function(_FetchAllDrivers value) fetchAllDrivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDriver value)? addDriver,
    TResult? Function(_RemoveDriver value)? removeDriver,
    TResult? Function(_UpdateDriver value)? updateDriver,
    TResult? Function(_FetchAllDrivers value)? fetchAllDrivers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDriver value)? addDriver,
    TResult Function(_RemoveDriver value)? removeDriver,
    TResult Function(_UpdateDriver value)? updateDriver,
    TResult Function(_FetchAllDrivers value)? fetchAllDrivers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriversEventCopyWith<$Res> {
  factory $DriversEventCopyWith(
          DriversEvent value, $Res Function(DriversEvent) then) =
      _$DriversEventCopyWithImpl<$Res, DriversEvent>;
}

/// @nodoc
class _$DriversEventCopyWithImpl<$Res, $Val extends DriversEvent>
    implements $DriversEventCopyWith<$Res> {
  _$DriversEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddDriverImplCopyWith<$Res> {
  factory _$$AddDriverImplCopyWith(
          _$AddDriverImpl value, $Res Function(_$AddDriverImpl) then) =
      __$$AddDriverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Driver driver});
}

/// @nodoc
class __$$AddDriverImplCopyWithImpl<$Res>
    extends _$DriversEventCopyWithImpl<$Res, _$AddDriverImpl>
    implements _$$AddDriverImplCopyWith<$Res> {
  __$$AddDriverImplCopyWithImpl(
      _$AddDriverImpl _value, $Res Function(_$AddDriverImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
  }) {
    return _then(_$AddDriverImpl(
      null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver,
    ));
  }
}

/// @nodoc

class _$AddDriverImpl implements _AddDriver {
  const _$AddDriverImpl(this.driver);

  @override
  final Driver driver;

  @override
  String toString() {
    return 'DriversEvent.addDriver(driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDriverImpl &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driver);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDriverImplCopyWith<_$AddDriverImpl> get copyWith =>
      __$$AddDriverImplCopyWithImpl<_$AddDriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Driver driver) addDriver,
    required TResult Function(String driverId) removeDriver,
    required TResult Function(String driverId, Driver driver) updateDriver,
    required TResult Function() fetchAllDrivers,
  }) {
    return addDriver(driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Driver driver)? addDriver,
    TResult? Function(String driverId)? removeDriver,
    TResult? Function(String driverId, Driver driver)? updateDriver,
    TResult? Function()? fetchAllDrivers,
  }) {
    return addDriver?.call(driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Driver driver)? addDriver,
    TResult Function(String driverId)? removeDriver,
    TResult Function(String driverId, Driver driver)? updateDriver,
    TResult Function()? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (addDriver != null) {
      return addDriver(driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDriver value) addDriver,
    required TResult Function(_RemoveDriver value) removeDriver,
    required TResult Function(_UpdateDriver value) updateDriver,
    required TResult Function(_FetchAllDrivers value) fetchAllDrivers,
  }) {
    return addDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDriver value)? addDriver,
    TResult? Function(_RemoveDriver value)? removeDriver,
    TResult? Function(_UpdateDriver value)? updateDriver,
    TResult? Function(_FetchAllDrivers value)? fetchAllDrivers,
  }) {
    return addDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDriver value)? addDriver,
    TResult Function(_RemoveDriver value)? removeDriver,
    TResult Function(_UpdateDriver value)? updateDriver,
    TResult Function(_FetchAllDrivers value)? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (addDriver != null) {
      return addDriver(this);
    }
    return orElse();
  }
}

abstract class _AddDriver implements DriversEvent {
  const factory _AddDriver(final Driver driver) = _$AddDriverImpl;

  Driver get driver;

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDriverImplCopyWith<_$AddDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDriverImplCopyWith<$Res> {
  factory _$$RemoveDriverImplCopyWith(
          _$RemoveDriverImpl value, $Res Function(_$RemoveDriverImpl) then) =
      __$$RemoveDriverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId});
}

/// @nodoc
class __$$RemoveDriverImplCopyWithImpl<$Res>
    extends _$DriversEventCopyWithImpl<$Res, _$RemoveDriverImpl>
    implements _$$RemoveDriverImplCopyWith<$Res> {
  __$$RemoveDriverImplCopyWithImpl(
      _$RemoveDriverImpl _value, $Res Function(_$RemoveDriverImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
  }) {
    return _then(_$RemoveDriverImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveDriverImpl implements _RemoveDriver {
  const _$RemoveDriverImpl(this.driverId);

  @override
  final String driverId;

  @override
  String toString() {
    return 'DriversEvent.removeDriver(driverId: $driverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDriverImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDriverImplCopyWith<_$RemoveDriverImpl> get copyWith =>
      __$$RemoveDriverImplCopyWithImpl<_$RemoveDriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Driver driver) addDriver,
    required TResult Function(String driverId) removeDriver,
    required TResult Function(String driverId, Driver driver) updateDriver,
    required TResult Function() fetchAllDrivers,
  }) {
    return removeDriver(driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Driver driver)? addDriver,
    TResult? Function(String driverId)? removeDriver,
    TResult? Function(String driverId, Driver driver)? updateDriver,
    TResult? Function()? fetchAllDrivers,
  }) {
    return removeDriver?.call(driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Driver driver)? addDriver,
    TResult Function(String driverId)? removeDriver,
    TResult Function(String driverId, Driver driver)? updateDriver,
    TResult Function()? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (removeDriver != null) {
      return removeDriver(driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDriver value) addDriver,
    required TResult Function(_RemoveDriver value) removeDriver,
    required TResult Function(_UpdateDriver value) updateDriver,
    required TResult Function(_FetchAllDrivers value) fetchAllDrivers,
  }) {
    return removeDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDriver value)? addDriver,
    TResult? Function(_RemoveDriver value)? removeDriver,
    TResult? Function(_UpdateDriver value)? updateDriver,
    TResult? Function(_FetchAllDrivers value)? fetchAllDrivers,
  }) {
    return removeDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDriver value)? addDriver,
    TResult Function(_RemoveDriver value)? removeDriver,
    TResult Function(_UpdateDriver value)? updateDriver,
    TResult Function(_FetchAllDrivers value)? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (removeDriver != null) {
      return removeDriver(this);
    }
    return orElse();
  }
}

abstract class _RemoveDriver implements DriversEvent {
  const factory _RemoveDriver(final String driverId) = _$RemoveDriverImpl;

  String get driverId;

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveDriverImplCopyWith<_$RemoveDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDriverImplCopyWith<$Res> {
  factory _$$UpdateDriverImplCopyWith(
          _$UpdateDriverImpl value, $Res Function(_$UpdateDriverImpl) then) =
      __$$UpdateDriverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String driverId, Driver driver});
}

/// @nodoc
class __$$UpdateDriverImplCopyWithImpl<$Res>
    extends _$DriversEventCopyWithImpl<$Res, _$UpdateDriverImpl>
    implements _$$UpdateDriverImplCopyWith<$Res> {
  __$$UpdateDriverImplCopyWithImpl(
      _$UpdateDriverImpl _value, $Res Function(_$UpdateDriverImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = null,
    Object? driver = null,
  }) {
    return _then(_$UpdateDriverImpl(
      null == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      null == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver,
    ));
  }
}

/// @nodoc

class _$UpdateDriverImpl implements _UpdateDriver {
  const _$UpdateDriverImpl(this.driverId, this.driver);

  @override
  final String driverId;
  @override
  final Driver driver;

  @override
  String toString() {
    return 'DriversEvent.updateDriver(driverId: $driverId, driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDriverImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, driverId, driver);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDriverImplCopyWith<_$UpdateDriverImpl> get copyWith =>
      __$$UpdateDriverImplCopyWithImpl<_$UpdateDriverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Driver driver) addDriver,
    required TResult Function(String driverId) removeDriver,
    required TResult Function(String driverId, Driver driver) updateDriver,
    required TResult Function() fetchAllDrivers,
  }) {
    return updateDriver(driverId, driver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Driver driver)? addDriver,
    TResult? Function(String driverId)? removeDriver,
    TResult? Function(String driverId, Driver driver)? updateDriver,
    TResult? Function()? fetchAllDrivers,
  }) {
    return updateDriver?.call(driverId, driver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Driver driver)? addDriver,
    TResult Function(String driverId)? removeDriver,
    TResult Function(String driverId, Driver driver)? updateDriver,
    TResult Function()? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (updateDriver != null) {
      return updateDriver(driverId, driver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDriver value) addDriver,
    required TResult Function(_RemoveDriver value) removeDriver,
    required TResult Function(_UpdateDriver value) updateDriver,
    required TResult Function(_FetchAllDrivers value) fetchAllDrivers,
  }) {
    return updateDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDriver value)? addDriver,
    TResult? Function(_RemoveDriver value)? removeDriver,
    TResult? Function(_UpdateDriver value)? updateDriver,
    TResult? Function(_FetchAllDrivers value)? fetchAllDrivers,
  }) {
    return updateDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDriver value)? addDriver,
    TResult Function(_RemoveDriver value)? removeDriver,
    TResult Function(_UpdateDriver value)? updateDriver,
    TResult Function(_FetchAllDrivers value)? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (updateDriver != null) {
      return updateDriver(this);
    }
    return orElse();
  }
}

abstract class _UpdateDriver implements DriversEvent {
  const factory _UpdateDriver(final String driverId, final Driver driver) =
      _$UpdateDriverImpl;

  String get driverId;
  Driver get driver;

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDriverImplCopyWith<_$UpdateDriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllDriversImplCopyWith<$Res> {
  factory _$$FetchAllDriversImplCopyWith(_$FetchAllDriversImpl value,
          $Res Function(_$FetchAllDriversImpl) then) =
      __$$FetchAllDriversImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllDriversImplCopyWithImpl<$Res>
    extends _$DriversEventCopyWithImpl<$Res, _$FetchAllDriversImpl>
    implements _$$FetchAllDriversImplCopyWith<$Res> {
  __$$FetchAllDriversImplCopyWithImpl(
      _$FetchAllDriversImpl _value, $Res Function(_$FetchAllDriversImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllDriversImpl implements _FetchAllDrivers {
  const _$FetchAllDriversImpl();

  @override
  String toString() {
    return 'DriversEvent.fetchAllDrivers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllDriversImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Driver driver) addDriver,
    required TResult Function(String driverId) removeDriver,
    required TResult Function(String driverId, Driver driver) updateDriver,
    required TResult Function() fetchAllDrivers,
  }) {
    return fetchAllDrivers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Driver driver)? addDriver,
    TResult? Function(String driverId)? removeDriver,
    TResult? Function(String driverId, Driver driver)? updateDriver,
    TResult? Function()? fetchAllDrivers,
  }) {
    return fetchAllDrivers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Driver driver)? addDriver,
    TResult Function(String driverId)? removeDriver,
    TResult Function(String driverId, Driver driver)? updateDriver,
    TResult Function()? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (fetchAllDrivers != null) {
      return fetchAllDrivers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDriver value) addDriver,
    required TResult Function(_RemoveDriver value) removeDriver,
    required TResult Function(_UpdateDriver value) updateDriver,
    required TResult Function(_FetchAllDrivers value) fetchAllDrivers,
  }) {
    return fetchAllDrivers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDriver value)? addDriver,
    TResult? Function(_RemoveDriver value)? removeDriver,
    TResult? Function(_UpdateDriver value)? updateDriver,
    TResult? Function(_FetchAllDrivers value)? fetchAllDrivers,
  }) {
    return fetchAllDrivers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDriver value)? addDriver,
    TResult Function(_RemoveDriver value)? removeDriver,
    TResult Function(_UpdateDriver value)? updateDriver,
    TResult Function(_FetchAllDrivers value)? fetchAllDrivers,
    required TResult orElse(),
  }) {
    if (fetchAllDrivers != null) {
      return fetchAllDrivers(this);
    }
    return orElse();
  }
}

abstract class _FetchAllDrivers implements DriversEvent {
  const factory _FetchAllDrivers() = _$FetchAllDriversImpl;
}

/// @nodoc
mixin _$DriversState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Driver> drivers) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Driver> drivers)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Driver> drivers)? loadedState,
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
abstract class $DriversStateCopyWith<$Res> {
  factory $DriversStateCopyWith(
          DriversState value, $Res Function(DriversState) then) =
      _$DriversStateCopyWithImpl<$Res, DriversState>;
}

/// @nodoc
class _$DriversStateCopyWithImpl<$Res, $Val extends DriversState>
    implements $DriversStateCopyWith<$Res> {
  _$DriversStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriversState
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
    extends _$DriversStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DriversState.initial()';
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
    required TResult Function(List<Driver> drivers) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Driver> drivers)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Driver> drivers)? loadedState,
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

abstract class _Initial implements DriversState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Driver> drivers});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$DriversStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drivers = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl implements _LoadedState {
  const _$LoadedStateImpl(final List<Driver> drivers) : _drivers = drivers;

  final List<Driver> _drivers;
  @override
  List<Driver> get drivers {
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drivers);
  }

  @override
  String toString() {
    return 'DriversState.loadedState(drivers: $drivers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._drivers, _drivers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drivers));

  /// Create a copy of DriversState
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
    required TResult Function(List<Driver> drivers) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return loadedState(drivers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Driver> drivers)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return loadedState?.call(drivers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Driver> drivers)? loadedState,
    TResult Function()? loadingState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(drivers);
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

abstract class _LoadedState implements DriversState {
  const factory _LoadedState(final List<Driver> drivers) = _$LoadedStateImpl;

  List<Driver> get drivers;

  /// Create a copy of DriversState
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
    extends _$DriversStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'DriversState.loadingState()';
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
    required TResult Function(List<Driver> drivers) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Driver> drivers)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Driver> drivers)? loadedState,
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

abstract class _LoadingState implements DriversState {
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
    extends _$DriversStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'DriversState.errorState()';
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
    required TResult Function(List<Driver> drivers) loadedState,
    required TResult Function() loadingState,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Driver> drivers)? loadedState,
    TResult? Function()? loadingState,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Driver> drivers)? loadedState,
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

abstract class _ErrorState implements DriversState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
