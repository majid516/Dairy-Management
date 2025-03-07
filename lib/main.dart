import 'package:diary_management/core/services/ask_location_permission.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/model/route_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/constants/screen_size.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'core/services/app_initializer.dart';
import 'features/authentication/services/auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initializeApp();
   await Hive.initFlutter();

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    determinePosition();
    ScreenSize.initializeScreenSize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DriversBloc()),
        BlocProvider(create: (context) => StoresBloc()),
        BlocProvider(create: (context) => RoutesBloc()),
        BlocProvider(create: (context) => RouteSelectionCubit()),
        BlocProvider(create: (context) => RouteGroupBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthServices().getInitialScreen(),
      ),
    );
  }
}