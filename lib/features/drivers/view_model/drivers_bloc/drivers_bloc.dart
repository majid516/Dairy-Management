import 'package:bloc/bloc.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drivers_event.dart';
part 'drivers_state.dart';
part 'drivers_bloc.freezed.dart';

class DriversBloc extends Bloc<DriversEvent, DriversState> {
  DriversBloc() : super(const DriversState.initial()) {
    on<_FetchAllDrivers>((event, emit) async {
      emit(DriversState.loadingState());
      try {
        emit(DriversState.loadedState(DriverDatabaseServices.getDrivers()));
      } on Exception catch (e) {
        emit(DriversState.errorState());
        throw Exception(e);
      }
    });
    on<_AddDriver>((event, emit) async {
      emit(DriversState.loadingState());
      try {
        await DriverDatabaseServices.addDriver(event.driver);
        emit(DriversState.loadedState(DriverDatabaseServices.getDrivers()));
      } on Exception catch (e) {
        emit(DriversState.errorState());
        throw Exception(e);
      }
    });

    on<_RemoveDriver>((event, emit) async {
      emit(DriversState.loadingState());
      try {
        await DriverDatabaseServices.removeDriver(event.driverId);
        emit(DriversState.loadedState(DriverDatabaseServices.getDrivers()));
      } on Exception catch (e) {
        emit(DriversState.errorState());
        throw Exception(e);
      }
    });

    on<_UpdateDriver>((event, emit) async {
      emit(DriversState.loadingState());
      try {
        await DriverDatabaseServices.updateDriver(event.driverId, event.driver);
        emit(DriversState.loadedState(DriverDatabaseServices.getDrivers()));
      } on Exception catch (e) {
        emit(DriversState.errorState());
        throw Exception(e);
      }
    });
  }
}
