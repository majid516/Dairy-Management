import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/drivers/view/widgets/driver_details_list_tile_widget.dart';
import 'package:flutter/material.dart';

class CustomDriverCard extends StatelessWidget {
  final Driver driver;
  final int index;
  final Function() onEdit;
  final Function() onDelete;

  const CustomDriverCard({
    super.key,
    required this.driver,
    required this.index,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: MyColors.secondaryColor.withValues(alpha: 0.3),
          width: 1.5,
        ),
        gradient: LinearGradient(
          colors: [
            MyColors.secondaryColor.withValues(alpha: 0.01),
            MyColors.primaryColor.withValues(alpha: 0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: DriverDetailsListTileWidget(
        driver: driver,
        onEdit: onEdit,
        onDelete: onDelete,
      ),
    );
  }
}
