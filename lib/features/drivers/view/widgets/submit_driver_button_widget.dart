import 'package:diary_management/core/components/custom_submit_button.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitDriverButtonWidget extends StatelessWidget {
  const SubmitDriverButtonWidget({
    super.key,
    required this.nameController,
    required this.passwordController,
    required this.pickedImagePath,
    this.existingDriver,
  });

  final TextEditingController nameController;
  final TextEditingController passwordController;
  final String? pickedImagePath;
  final Driver? existingDriver;

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      action: () {
        final driver = Driver(
          id: existingDriver?.id ?? generateRandomNumber().toString(),
          name: nameController.text,
          password: passwordController.text,
          image: pickedImagePath ?? '',
          routes: existingDriver?.routes ?? [],
        );

        if (existingDriver == null) {
          context.read<DriversBloc>().add(DriversEvent.addDriver(driver));
        } else {
          context.read<DriversBloc>().add(
            DriversEvent.updateDriver(driver.id, driver),
          );
        }

        Navigator.pop(context);
      },
    );
  }
}
