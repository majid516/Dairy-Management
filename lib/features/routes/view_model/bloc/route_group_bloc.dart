import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/services/group_routes_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_group_event.dart';
part 'route_group_state.dart';
part 'route_group_bloc.freezed.dart';

class RouteGroupBloc extends Bloc<RouteGroupEvent, RouteGroupState> {
  RouteGroupBloc() : super(_Initial()) {
    on<_FetchAllGroups>((event, emit) async{
      try {
        emit(RouteGroupState.loading());
        final data = await RouteGroupServices.fetchAllGroups();
        emit(RouteGroupState.loaded(data));
      } catch (e) {
        emit(RouteGroupState.error(e.toString()));
        
      }
    });
    on<_AddNewGroup>((event, emit) async{
      try {
        emit(RouteGroupState.loading());
        await RouteGroupServices.groupRoutes(event.routeGroup);
        add(const _FetchAllGroups());
      } catch (e) {
        emit(RouteGroupState.error(e.toString()));
        
      }
    });
    on<_UpdateGroup>((event, emit) async{
      try {
        emit(RouteGroupState.loading());
        await RouteGroupServices.updateGroup(event.routeGroup);
        add(const _FetchAllGroups());
      } catch (e) {
        emit(RouteGroupState.error(e.toString()));
        
      }
    });
  }
}
