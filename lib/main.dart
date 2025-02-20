import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/services/database/driver_database_services.dart';
import 'package:diary_management/features/drivers/view/screens/drivers_screen.dart';
import 'package:diary_management/features/drivers/view_model/bloc/drivers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(DriverAdapter().typeId)) {
    Hive.registerAdapter(DriverAdapter());
  }

  await DriverDatabaseServices.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initializeScreenSize(context);
    return BlocProvider(
      create: (context) => DriversBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DriverScreen(),
      ),
    );
  }
}
