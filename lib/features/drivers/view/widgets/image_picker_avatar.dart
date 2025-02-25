import 'dart:io';
import 'package:flutter/material.dart';

class ImagePickerAvatar extends StatelessWidget {
  const ImagePickerAvatar({super.key, required this.pickedImagePath});

  final String? pickedImagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey.shade300,
      backgroundImage:
          pickedImagePath != null ? FileImage(File(pickedImagePath!)) : null,
      child:
          pickedImagePath == null
              ? const Icon(Icons.camera_alt, size: 30, color: Colors.white)
              : null,
    );
  }
}
