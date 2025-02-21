
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteSelectionCubit extends Cubit<List<String>> {
  RouteSelectionCubit() : super([]);

  void toggleRoute(String routeId) {
    final updatedRoutes = List<String>.from(state);
    if (updatedRoutes.contains(routeId)) {
      updatedRoutes.remove(routeId);
    } else {
      updatedRoutes.add(routeId);
    }
    emit(updatedRoutes);
  }

  void clearSelection() => emit([]);
}
