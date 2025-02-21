import 'dart:io';
import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_delete_update_icon.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:flutter/material.dart';

class DriverDetailsListTileWidget extends StatelessWidget {
  const DriverDetailsListTileWidget({
    super.key,
    required this.driver,
    required this.onEdit,
    required this.onDelete,
  });

  final Driver driver;
  final Function() onEdit;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: MyColors.secondaryColor.withValues(alpha: 0.1),
        backgroundImage:
            driver.image.isNotEmpty ? FileImage(File(driver.image)) : null,
        child:
            driver.image.isEmpty
                ? const Icon(
                  Icons.person,
                  size: 30,
                  color: MyColors.secondaryColor,
                )
                : null,
      ),
      title: Text(
        driver.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
      subtitle: Text(
        'Contact: ${driver.contactNumber}',
        style: TextStyle(color: Colors.grey.shade600),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomDeleteUpdateIcon(
            icon: Icons.edit,
            color: MyColors.secondaryColor,
            onTap: onEdit,
          ),
          const SizedBox(width: 8),
          CustomDeleteUpdateIcon(
            icon: Icons.delete,
            color: MyColors.secondaryColor,
            onTap: onDelete,
          ),
        ],
      ),
    );
  }
}
