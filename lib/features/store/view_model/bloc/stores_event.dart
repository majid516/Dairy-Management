part of 'stores_bloc.dart';

@freezed
class StoresEvent with _$StoresEvent {
  const factory StoresEvent.addStore(Store driver) = _AddStore;
  const factory StoresEvent.removeStore(String driverId) = _RemoveStore;
  const factory StoresEvent.updateStore(String driverId, Store driver) = _UpdateStore;
  const factory StoresEvent.fetchAllStores() = _FetchAllStores;
}
