import 'package:bloc/bloc.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stores_event.dart';
part 'stores_state.dart';
part 'stores_bloc.freezed.dart';

class StoresBloc extends Bloc<StoresEvent, StoresState> {
  StoresBloc() : super(_Initial()) {
    on<_FetchAllStores>((event, emit) async {
      emit(StoresState.loadingState());
      try {
        emit(StoresState.loadedState(StoreDatabaseServices.getStore()));
      } on Exception catch (e) {
        emit(StoresState.errorState());
        throw Exception(e);
      }
    });
    on<_AddStore>((event, emit) async {
      emit(StoresState.loadingState());
      try {
        await StoreDatabaseServices.addStore(event.driver);
        emit(StoresState.loadedState(StoreDatabaseServices.getStore()));
      } on Exception catch (e) {
        emit(StoresState.errorState());
        throw Exception(e);
      }
    });

    on<_RemoveStore>((event, emit) async {
      emit(StoresState.loadingState());
      try {
        await StoreDatabaseServices.removeStore(event.driverId);
        emit(StoresState.loadedState(StoreDatabaseServices.getStore()));
      } on Exception catch (e) {
        emit(StoresState.errorState());
        throw Exception(e);
      }
    });

    on<_UpdateStore>((event, emit) async {
      emit(StoresState.loadingState());
      try {
        await StoreDatabaseServices.updateStore(event.driverId, event.driver);
        emit(StoresState.loadedState(StoreDatabaseServices.getStore()));
      } on Exception catch (e) {
        emit(StoresState.errorState());
        throw Exception(e);
      }
    });
  }
}
