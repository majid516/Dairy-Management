import 'package:bloc/bloc.dart';
import 'package:diary_management/features/routes/model/route_model.dart';
import 'package:diary_management/features/routes/services/routes_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_event.dart';
part 'routes_state.dart';
part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(Initial()) {
    on<_LoadRoutes>((event, emit) async {
      emit(const RoutesState.loading());
      try {
        final routes = await RoutesServices.getRoutes();
        emit(RoutesState.loaded(routes));
      } catch (e) {
        emit(RoutesState.error(e.toString()));
      }
    });

    on<_AddRoute>((event, emit) async {
      await RoutesServices.addRoute(event.route);
      add(const _LoadRoutes());
    });

    on<_UpdateRoute>((event, emit) async {
      await RoutesServices.updateRoute(event.route);
      add(const _LoadRoutes());
    });

    on<_DeleteRoute>((event, emit) async {
      await RoutesServices.deleteRoute(event.id);
      add(const _LoadRoutes());
    });

    on<_AssignDriver>((event, emit) async {
      final route = await RoutesServices.getRoute(event.routeId);
      if (route != null) {
        final updatedRoute = route.copyWith(driverId: event.driverId);
        await RoutesServices.updateRoute(updatedRoute);
        add(const _LoadRoutes());
      }
    });

    on<_AssignStores>((event, emit) async {
      final route = await RoutesServices.getRoute(event.routeId);
      if (route != null) {
        final updatedRoute = route.copyWith(storeIds: event.storeIds);
        await RoutesServices.updateRoute(updatedRoute);
        add(const _LoadRoutes());
      }
    });
    
  }
}
