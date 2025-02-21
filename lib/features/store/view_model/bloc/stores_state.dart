part of 'stores_bloc.dart';

@freezed
class StoresState with _$StoresState {
  const factory StoresState.initial() = _Initial;
  const factory StoresState.loadedState(List<Store> stores) = _LoadedState;
  const factory StoresState.loadingState() = _LoadingState;
  const factory StoresState.errorState() = _ErrorState;
}
