
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteSelectionCubit extends Cubit<List<Map<String, String>>> {
  RouteSelectionCubit() : super([]);

  void toggleRoute(Map<String, String> route) {
    final updatedRoutes = List<Map<String, String>>.from(state);
    if (updatedRoutes.any((r) => r['address'] == route['address'])) {
      updatedRoutes.removeWhere((r) => r['address'] == route['address']);
    } else {
      updatedRoutes.add(route);
    }
    emit(updatedRoutes);
  }

  void clearSelection() => emit([]);
}
