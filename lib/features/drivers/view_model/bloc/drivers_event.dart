part of 'drivers_bloc.dart';
@freezed
class DriversEvent with _$DriversEvent {
  const factory DriversEvent.addDriver(Driver driver) = _AddDriver;
  const factory DriversEvent.removeDriver(String driverId) = _RemoveDriver;
  const factory DriversEvent.updateDriver(String driverId, Driver driver) = _UpdateDriver;
  const factory DriversEvent.fetchAllDrivers() = _FetchAllDrivers;
}
