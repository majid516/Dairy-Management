import 'package:diary_management/core/components/custom_text_from_field.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/view/widgets/submit_driver_button_widget.dart';
import 'package:flutter/material.dart';

class AddAlertDilogElements extends StatelessWidget {
  const AddAlertDilogElements({
    super.key,
    required this.nameController,
    required this.passwordController,
    required this.pickedImagePath,
    required this.existingDriver, required this.contactController,
  });

  final TextEditingController nameController;
  final TextEditingController passwordController;
  final TextEditingController contactController;
  final String? pickedImagePath;
  final Driver? existingDriver;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Space.hSpace10,
        CustomTextFromField(controller: nameController, label: "Name"),
        Space.hSpace10,
        CustomTextFromField(controller: contactController, label: "Contact", keyboardType: TextInputType.phone,),
        Space.hSpace10,
        CustomTextFromField(
          controller: passwordController,
          label: "Password",
          obscureText: true,
        ),
        Space.hSpace10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancel", style: TextStyle(color: Colors.red)),
            ),
            SubmitDriverButtonWidget(
              nameController: nameController,
              passwordController: passwordController,
              pickedImagePath: pickedImagePath,
              existingDriver: existingDriver,
              contactController:contactController ,
            ),
          ],
        ),
      ],
    );
  }
}
