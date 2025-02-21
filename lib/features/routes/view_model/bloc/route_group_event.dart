part of 'route_group_bloc.dart';

@freezed
class RouteGroupEvent with _$RouteGroupEvent {
  const factory RouteGroupEvent.fetchAllGroups() = _FetchAllGroups;
  const factory RouteGroupEvent.addNewGroup(RouteGroupModel routeGroup) = _AddNewGroup;
  const factory RouteGroupEvent.update(RouteGroupModel routeGroup) = _UpdateGroup;
  const factory RouteGroupEvent.deleteGroup(String id) = _DeleteGorup;
}