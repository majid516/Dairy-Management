part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.loading() = NavigationLoading;
  const factory NavigationState.loaded(
    LatLng currentLocation,
    List<Polyline> polylines,
    Set<Marker> markers,
    List<Store> stores,
  ) = NavigationLoaded;
  const factory NavigationState.error() = NavigationError;
}
