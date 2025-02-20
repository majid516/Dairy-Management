import 'package:diary_management/core/vlidators.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
   final TextEditingController controller;
    final String label;
  final  bool obscureText;
  const CustomTextFromField({super.key, required this.controller, required this.label, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => FormValidators.commonValidator(value, massage: 'enter lable'),
      controller: controller,
      obscureText: obscureText,
      
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
    );
  }
}
