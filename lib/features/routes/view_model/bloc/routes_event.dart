part of 'routes_bloc.dart';

@freezed
class RoutesEvent with _$RoutesEvent {
  const factory RoutesEvent.loadRoutes() = _LoadRoutes;
  const factory RoutesEvent.addRoute(Routes route) = _AddRoute;
  const factory RoutesEvent.updateRoute(Routes route) = _UpdateRoute;
  const factory RoutesEvent.deleteRoute(String id) = _DeleteRoute;
  const factory RoutesEvent.assignDriver(String routeId, String driverId) = _AssignDriver;
  const factory RoutesEvent.assignStores(String routeId, List<String> storeIds) = _AssignStores;
}