part of 'drivers_bloc.dart';

@freezed
class DriversState with _$DriversState {
  const factory DriversState.initial() = _Initial;
  const factory DriversState.loadedState(List<Driver> drivers) = _LoadedState;
  const factory DriversState.loadingState() = _LoadingState;
  const factory DriversState.errorState() = _ErrorState;

}
