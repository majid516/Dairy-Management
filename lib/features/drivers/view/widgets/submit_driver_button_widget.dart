import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/components/custom_submit_button.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/core/vlidators.dart';
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
    required this.contactController,
  });

  final TextEditingController nameController;
  final TextEditingController passwordController;
  final TextEditingController contactController;
  final String? pickedImagePath;
  final Driver? existingDriver;

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      action: () {
        final name = nameController.text.trim();
        final passId = passwordController.text.trim();
        final contactNo = contactController.text.trim();
        final contactValid = FormValidators.isValidPhoneNumber(contactNo);
        if (name.isNotEmpty &&
            passId.isNotEmpty &&
            contactNo.isNotEmpty &&
            pickedImagePath != null &&
            pickedImagePath!.isNotEmpty) {
          if (contactValid) {
            final driver = Driver(
              id: existingDriver?.id ?? generateRandomNumber().toString(),
              name: name,
              password: passId,
              image: pickedImagePath ?? '',
              contactNumber: contactNo,
              routes: existingDriver?.routes ?? [],
            );

            if (existingDriver == null) {
              context.read<DriversBloc>().add(DriversEvent.addDriver(driver));
            } else {
              context.read<DriversBloc>().add(
                DriversEvent.updateDriver(driver.id, driver),
              );
            }
            showCustomSnackBar(
              context,
              existingDriver != null
                  ? 'updated successfully'
                  : 'added successfully',
              false,
            );
            Navigator.pop(context);
          } else {
            showCustomSnackBar(context, 'contact number is not valid', true);
          }
        } else if (pickedImagePath == null) {
          showCustomSnackBar(context, 'add driver profile', true);
        } else {
          showCustomSnackBar(context, 'fill all fields', true);
        }
      },
    );
  }
}
