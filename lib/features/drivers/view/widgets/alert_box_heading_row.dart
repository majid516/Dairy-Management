import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:flutter/material.dart';

class AlertBoxHeadingRow extends StatelessWidget {
  final Driver? existingDriver;
  const AlertBoxHeadingRow({super.key, this.existingDriver});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          existingDriver == null ? 'Add Driver' : 'Update Driver',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.eco,
              size: 70,
              color: MyColors.primaryColor.withValues(alpha: 0.2),
            ),
            Icon(
              Icons.eco,
              size: 50,
              color: MyColors.primaryColor.withValues(alpha: 0.5),
            ),
          ],
        ),
      ],
    );
  }
}
