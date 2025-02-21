part of 'routes_bloc.dart';

@freezed
class RoutesState with _$RoutesState {
  const factory RoutesState.initial() = Initial;
  const factory RoutesState.loading() = Loading;
  const factory RoutesState.loaded(List<Routes> routes) = Loaded;
  const factory RoutesState.error(String message) = Error;
}
