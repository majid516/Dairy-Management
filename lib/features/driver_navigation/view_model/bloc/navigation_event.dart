part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.fetchRoutes(String driverId) = FetchRoutesEvent;
  const factory NavigationEvent.getRoute(Store store) = GetRouteEvent;
  const factory NavigationEvent.updateVisitStatus(String driverId, Store store) = UpdateVisitStatusEvent;
}