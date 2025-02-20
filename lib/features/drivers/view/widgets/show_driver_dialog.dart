import 'dart:io';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/view/widgets/add_alert_dilog_elements.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showDriverDialog(BuildContext context, Driver? existingDriver) {
  final nameController = TextEditingController(text: existingDriver?.name);
  final passwordController = TextEditingController(
    text: existingDriver?.password,
  );
  String? pickedImagePath = existingDriver?.image;

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    existingDriver == null ? 'Add Driver' : 'Update Driver',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Space.hSpace10,
                  GestureDetector(
                    onTap: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        setState(() => pickedImagePath = image.path);
                      }
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage:
                          pickedImagePath != null
                              ? FileImage(File(pickedImagePath!))
                              : null,
                      child:
                          pickedImagePath == null
                              ? const Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: Colors.white,
                              )
                              : null,
                    ),
                  ),
                  AddAlertDilogElements(
                    nameController: nameController,
                    passwordController: passwordController,
                    pickedImagePath: pickedImagePath,
                    existingDriver: existingDriver,
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
