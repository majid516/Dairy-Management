import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/management/screen/dashboard.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/services/database/database_services.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  await DriverDatabaseServices.init();
  await StoreDatabaseServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initializeScreenSize(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DriversBloc()),
        BlocProvider(create: (context) => StoresBloc()),
      
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardScreen(),
      ),
    );
  }
}
