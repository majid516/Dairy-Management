import 'dart:io';
import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlertBoxListTile extends StatelessWidget {
  final List<Driver> drivers;
  final RouteGroupModel group;
  const AlertBoxListTile({
    super.key,
    required this.group,
    required this.drivers,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: drivers.length * 70.0 > 400 ? 400 : drivers.length * 70.0,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder:
            (context, index) =>
                Divider(height: 0, color: MyColors.primaryColor),
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          final driver = drivers[index];
          return ListTile(
            onTap: () {
              final updatedGroup = RouteGroupModel(
                asignedDriver: driver,
                groupName: group.groupName,
                stores: group.stores,
                id: group.id,
              );
              context.read<RouteGroupBloc>().add(
                RouteGroupEvent.updateGroup(updatedGroup),
              );
              Navigator.pop(context, driver.id);
            },
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: FileImage(File(driver.image)),
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
          );
        },
      ),
    );
  }
}
