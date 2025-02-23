
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteSelectionCubit extends Cubit<List<Store>> {
  RouteSelectionCubit() : super([]);

  void toggleRoute(Store route) {
    final updatedRoutes = List<Store>.from(state);
    if (updatedRoutes.any((r) => r.address == route.address)) {
      updatedRoutes.removeWhere((r) => r.address == route.address);
    } else {
      updatedRoutes.add(route);
    }
    emit(updatedRoutes);
  }

  void clearSelection() => emit([]);
}
