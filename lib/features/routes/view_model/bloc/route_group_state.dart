part of 'route_group_bloc.dart';

@freezed
class RouteGroupState with _$RouteGroupState {
  const factory RouteGroupState.initial() = _Initial;
  const factory RouteGroupState.loading() = _Loading;
  const factory RouteGroupState.loaded(List<RouteGroupModel> groups) = _Loaded;
  const factory RouteGroupState.error(String message) = _Error;
}
