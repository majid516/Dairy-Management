// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouteGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllGroups,
    required TResult Function(RouteGroupModel routeGroup) addNewGroup,
    required TResult Function(RouteGroupModel routeGroup) update,
    required TResult Function(String id) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllGroups,
    TResult? Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult? Function(RouteGroupModel routeGroup)? update,
    TResult? Function(String id)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllGroups,
    TResult Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult Function(RouteGroupModel routeGroup)? update,
    TResult Function(String id)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllGroups value) fetchAllGroups,
    required TResult Function(_AddNewGroup value) addNewGroup,
    required TResult Function(_UpdateGroup value) update,
    required TResult Function(_DeleteGorup value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllGroups value)? fetchAllGroups,
    TResult? Function(_AddNewGroup value)? addNewGroup,
    TResult? Function(_UpdateGroup value)? update,
    TResult? Function(_DeleteGorup value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllGroups value)? fetchAllGroups,
    TResult Function(_AddNewGroup value)? addNewGroup,
    TResult Function(_UpdateGroup value)? update,
    TResult Function(_DeleteGorup value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteGroupEventCopyWith<$Res> {
  factory $RouteGroupEventCopyWith(
          RouteGroupEvent value, $Res Function(RouteGroupEvent) then) =
      _$RouteGroupEventCopyWithImpl<$Res, RouteGroupEvent>;
}

/// @nodoc
class _$RouteGroupEventCopyWithImpl<$Res, $Val extends RouteGroupEvent>
    implements $RouteGroupEventCopyWith<$Res> {
  _$RouteGroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllGroupsImplCopyWith<$Res> {
  factory _$$FetchAllGroupsImplCopyWith(_$FetchAllGroupsImpl value,
          $Res Function(_$FetchAllGroupsImpl) then) =
      __$$FetchAllGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllGroupsImplCopyWithImpl<$Res>
    extends _$RouteGroupEventCopyWithImpl<$Res, _$FetchAllGroupsImpl>
    implements _$$FetchAllGroupsImplCopyWith<$Res> {
  __$$FetchAllGroupsImplCopyWithImpl(
      _$FetchAllGroupsImpl _value, $Res Function(_$FetchAllGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllGroupsImpl implements _FetchAllGroups {
  const _$FetchAllGroupsImpl();

  @override
  String toString() {
    return 'RouteGroupEvent.fetchAllGroups()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllGroupsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllGroups,
    required TResult Function(RouteGroupModel routeGroup) addNewGroup,
    required TResult Function(RouteGroupModel routeGroup) update,
    required TResult Function(String id) deleteGroup,
  }) {
    return fetchAllGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllGroups,
    TResult? Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult? Function(RouteGroupModel routeGroup)? update,
    TResult? Function(String id)? deleteGroup,
  }) {
    return fetchAllGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllGroups,
    TResult Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult Function(RouteGroupModel routeGroup)? update,
    TResult Function(String id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (fetchAllGroups != null) {
      return fetchAllGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllGroups value) fetchAllGroups,
    required TResult Function(_AddNewGroup value) addNewGroup,
    required TResult Function(_UpdateGroup value) update,
    required TResult Function(_DeleteGorup value) deleteGroup,
  }) {
    return fetchAllGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllGroups value)? fetchAllGroups,
    TResult? Function(_AddNewGroup value)? addNewGroup,
    TResult? Function(_UpdateGroup value)? update,
    TResult? Function(_DeleteGorup value)? deleteGroup,
  }) {
    return fetchAllGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllGroups value)? fetchAllGroups,
    TResult Function(_AddNewGroup value)? addNewGroup,
    TResult Function(_UpdateGroup value)? update,
    TResult Function(_DeleteGorup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (fetchAllGroups != null) {
      return fetchAllGroups(this);
    }
    return orElse();
  }
}

abstract class _FetchAllGroups implements RouteGroupEvent {
  const factory _FetchAllGroups() = _$FetchAllGroupsImpl;
}

/// @nodoc
abstract class _$$AddNewGroupImplCopyWith<$Res> {
  factory _$$AddNewGroupImplCopyWith(
          _$AddNewGroupImpl value, $Res Function(_$AddNewGroupImpl) then) =
      __$$AddNewGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RouteGroupModel routeGroup});
}

/// @nodoc
class __$$AddNewGroupImplCopyWithImpl<$Res>
    extends _$RouteGroupEventCopyWithImpl<$Res, _$AddNewGroupImpl>
    implements _$$AddNewGroupImplCopyWith<$Res> {
  __$$AddNewGroupImplCopyWithImpl(
      _$AddNewGroupImpl _value, $Res Function(_$AddNewGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeGroup = null,
  }) {
    return _then(_$AddNewGroupImpl(
      null == routeGroup
          ? _value.routeGroup
          : routeGroup // ignore: cast_nullable_to_non_nullable
              as RouteGroupModel,
    ));
  }
}

/// @nodoc

class _$AddNewGroupImpl implements _AddNewGroup {
  const _$AddNewGroupImpl(this.routeGroup);

  @override
  final RouteGroupModel routeGroup;

  @override
  String toString() {
    return 'RouteGroupEvent.addNewGroup(routeGroup: $routeGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewGroupImpl &&
            (identical(other.routeGroup, routeGroup) ||
                other.routeGroup == routeGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeGroup);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewGroupImplCopyWith<_$AddNewGroupImpl> get copyWith =>
      __$$AddNewGroupImplCopyWithImpl<_$AddNewGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllGroups,
    required TResult Function(RouteGroupModel routeGroup) addNewGroup,
    required TResult Function(RouteGroupModel routeGroup) update,
    required TResult Function(String id) deleteGroup,
  }) {
    return addNewGroup(routeGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllGroups,
    TResult? Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult? Function(RouteGroupModel routeGroup)? update,
    TResult? Function(String id)? deleteGroup,
  }) {
    return addNewGroup?.call(routeGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllGroups,
    TResult Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult Function(RouteGroupModel routeGroup)? update,
    TResult Function(String id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (addNewGroup != null) {
      return addNewGroup(routeGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllGroups value) fetchAllGroups,
    required TResult Function(_AddNewGroup value) addNewGroup,
    required TResult Function(_UpdateGroup value) update,
    required TResult Function(_DeleteGorup value) deleteGroup,
  }) {
    return addNewGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllGroups value)? fetchAllGroups,
    TResult? Function(_AddNewGroup value)? addNewGroup,
    TResult? Function(_UpdateGroup value)? update,
    TResult? Function(_DeleteGorup value)? deleteGroup,
  }) {
    return addNewGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllGroups value)? fetchAllGroups,
    TResult Function(_AddNewGroup value)? addNewGroup,
    TResult Function(_UpdateGroup value)? update,
    TResult Function(_DeleteGorup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (addNewGroup != null) {
      return addNewGroup(this);
    }
    return orElse();
  }
}

abstract class _AddNewGroup implements RouteGroupEvent {
  const factory _AddNewGroup(final RouteGroupModel routeGroup) =
      _$AddNewGroupImpl;

  RouteGroupModel get routeGroup;

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNewGroupImplCopyWith<_$AddNewGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGroupImplCopyWith<$Res> {
  factory _$$UpdateGroupImplCopyWith(
          _$UpdateGroupImpl value, $Res Function(_$UpdateGroupImpl) then) =
      __$$UpdateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RouteGroupModel routeGroup});
}

/// @nodoc
class __$$UpdateGroupImplCopyWithImpl<$Res>
    extends _$RouteGroupEventCopyWithImpl<$Res, _$UpdateGroupImpl>
    implements _$$UpdateGroupImplCopyWith<$Res> {
  __$$UpdateGroupImplCopyWithImpl(
      _$UpdateGroupImpl _value, $Res Function(_$UpdateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeGroup = null,
  }) {
    return _then(_$UpdateGroupImpl(
      null == routeGroup
          ? _value.routeGroup
          : routeGroup // ignore: cast_nullable_to_non_nullable
              as RouteGroupModel,
    ));
  }
}

/// @nodoc

class _$UpdateGroupImpl implements _UpdateGroup {
  const _$UpdateGroupImpl(this.routeGroup);

  @override
  final RouteGroupModel routeGroup;

  @override
  String toString() {
    return 'RouteGroupEvent.update(routeGroup: $routeGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupImpl &&
            (identical(other.routeGroup, routeGroup) ||
                other.routeGroup == routeGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routeGroup);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      __$$UpdateGroupImplCopyWithImpl<_$UpdateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllGroups,
    required TResult Function(RouteGroupModel routeGroup) addNewGroup,
    required TResult Function(RouteGroupModel routeGroup) update,
    required TResult Function(String id) deleteGroup,
  }) {
    return update(routeGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllGroups,
    TResult? Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult? Function(RouteGroupModel routeGroup)? update,
    TResult? Function(String id)? deleteGroup,
  }) {
    return update?.call(routeGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllGroups,
    TResult Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult Function(RouteGroupModel routeGroup)? update,
    TResult Function(String id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(routeGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllGroups value) fetchAllGroups,
    required TResult Function(_AddNewGroup value) addNewGroup,
    required TResult Function(_UpdateGroup value) update,
    required TResult Function(_DeleteGorup value) deleteGroup,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllGroups value)? fetchAllGroups,
    TResult? Function(_AddNewGroup value)? addNewGroup,
    TResult? Function(_UpdateGroup value)? update,
    TResult? Function(_DeleteGorup value)? deleteGroup,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllGroups value)? fetchAllGroups,
    TResult Function(_AddNewGroup value)? addNewGroup,
    TResult Function(_UpdateGroup value)? update,
    TResult Function(_DeleteGorup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateGroup implements RouteGroupEvent {
  const factory _UpdateGroup(final RouteGroupModel routeGroup) =
      _$UpdateGroupImpl;

  RouteGroupModel get routeGroup;

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGorupImplCopyWith<$Res> {
  factory _$$DeleteGorupImplCopyWith(
          _$DeleteGorupImpl value, $Res Function(_$DeleteGorupImpl) then) =
      __$$DeleteGorupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteGorupImplCopyWithImpl<$Res>
    extends _$RouteGroupEventCopyWithImpl<$Res, _$DeleteGorupImpl>
    implements _$$DeleteGorupImplCopyWith<$Res> {
  __$$DeleteGorupImplCopyWithImpl(
      _$DeleteGorupImpl _value, $Res Function(_$DeleteGorupImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteGorupImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteGorupImpl implements _DeleteGorup {
  const _$DeleteGorupImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RouteGroupEvent.deleteGroup(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGorupImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGorupImplCopyWith<_$DeleteGorupImpl> get copyWith =>
      __$$DeleteGorupImplCopyWithImpl<_$DeleteGorupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllGroups,
    required TResult Function(RouteGroupModel routeGroup) addNewGroup,
    required TResult Function(RouteGroupModel routeGroup) update,
    required TResult Function(String id) deleteGroup,
  }) {
    return deleteGroup(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllGroups,
    TResult? Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult? Function(RouteGroupModel routeGroup)? update,
    TResult? Function(String id)? deleteGroup,
  }) {
    return deleteGroup?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllGroups,
    TResult Function(RouteGroupModel routeGroup)? addNewGroup,
    TResult Function(RouteGroupModel routeGroup)? update,
    TResult Function(String id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllGroups value) fetchAllGroups,
    required TResult Function(_AddNewGroup value) addNewGroup,
    required TResult Function(_UpdateGroup value) update,
    required TResult Function(_DeleteGorup value) deleteGroup,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllGroups value)? fetchAllGroups,
    TResult? Function(_AddNewGroup value)? addNewGroup,
    TResult? Function(_UpdateGroup value)? update,
    TResult? Function(_DeleteGorup value)? deleteGroup,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllGroups value)? fetchAllGroups,
    TResult Function(_AddNewGroup value)? addNewGroup,
    TResult Function(_UpdateGroup value)? update,
    TResult Function(_DeleteGorup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class _DeleteGorup implements RouteGroupEvent {
  const factory _DeleteGorup(final String id) = _$DeleteGorupImpl;

  String get id;

  /// Create a copy of RouteGroupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteGorupImplCopyWith<_$DeleteGorupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RouteGroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RouteGroupModel> groups) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RouteGroupModel> groups)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RouteGroupModel> groups)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteGroupStateCopyWith<$Res> {
  factory $RouteGroupStateCopyWith(
          RouteGroupState value, $Res Function(RouteGroupState) then) =
      _$RouteGroupStateCopyWithImpl<$Res, RouteGroupState>;
}

/// @nodoc
class _$RouteGroupStateCopyWithImpl<$Res, $Val extends RouteGroupState>
    implements $RouteGroupStateCopyWith<$Res> {
  _$RouteGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteGroupState
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
    extends _$RouteGroupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RouteGroupState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<RouteGroupModel> groups) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RouteGroupModel> groups)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RouteGroupModel> groups)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RouteGroupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RouteGroupStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RouteGroupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RouteGroupModel> groups) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RouteGroupModel> groups)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RouteGroupModel> groups)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RouteGroupState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RouteGroupModel> groups});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RouteGroupStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$LoadedImpl(
      null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<RouteGroupModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<RouteGroupModel> groups) : _groups = groups;

  final List<RouteGroupModel> _groups;
  @override
  List<RouteGroupModel> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'RouteGroupState.loaded(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RouteGroupModel> groups) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RouteGroupModel> groups)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RouteGroupModel> groups)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RouteGroupState {
  const factory _Loaded(final List<RouteGroupModel> groups) = _$LoadedImpl;

  List<RouteGroupModel> get groups;

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RouteGroupStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RouteGroupState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RouteGroupModel> groups) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RouteGroupModel> groups)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RouteGroupModel> groups)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RouteGroupState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of RouteGroupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
