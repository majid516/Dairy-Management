import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/authentication/view/screens/login_screen.dart';
import 'package:diary_management/features/driver_tracking/view/screens/driver_tracking_screen.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/management/screen/dashboard.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/model/route_model.dart';
import 'package:diary_management/features/routes/services/routes_services.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(DriverAdapter().typeId)) {
    Hive.registerAdapter(DriverAdapter());
  }
  if (!Hive.isAdapterRegistered(StoreAdapter().typeId)) {
    Hive.registerAdapter(StoreAdapter());
  }
  if (!Hive.isAdapterRegistered(RoutesAdapter().typeId)) {
    Hive.registerAdapter(RoutesAdapter());
  }
  if (!Hive.isAdapterRegistered(RouteGroupModelAdapter().typeId)) {
    Hive.registerAdapter(RouteGroupModelAdapter());
  }
  await DriverDatabaseServices.init();
  await StoreDatabaseServices.init();
  await RoutesServices.init();
  Geolocator.checkPermission();
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
        home: LoginScreen(),
       // home: DriverNavigationScreen(driver: Driver(id: '38112480', name: 'man', password: 'password', image: 'image', routes: [], contactNumber: 'contactNumber'),),
      ),
    );
  }
}




Future<Position?> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Step 1: Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    print("Location services are disabled.");
    return null;
  }

  // Step 2: Check and request permission
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print("Location permissions are denied");
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    print("Location permissions are permanently denied. Open settings.");
    await Geolocator.openAppSettings();
    return null;
  }

  // Step 3: Get current position
  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}
