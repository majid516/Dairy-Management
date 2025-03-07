
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders {
  static List<BlocProvider> getProviders() {
    return [
      BlocProvider(create: (context) => DriversBloc()),
      BlocProvider(create: (context) => StoresBloc()),
      BlocProvider(create: (context) => RoutesBloc()),
      BlocProvider(create: (context) => RouteSelectionCubit()),
      BlocProvider(create: (context) => RouteGroupBloc()),
    ];
  }
}