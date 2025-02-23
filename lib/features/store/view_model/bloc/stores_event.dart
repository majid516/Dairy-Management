part of 'stores_bloc.dart';

@freezed
class StoresEvent with _$StoresEvent {
  const factory StoresEvent.addStore(Store store) = _AddStore;
  const factory StoresEvent.removeStore(String storeId) = _RemoveStore;
  const factory StoresEvent.updateStore(String storeId, Store store) = _UpdateStore;
  const factory StoresEvent.fetchAllStores() = _FetchAllStores;
}
