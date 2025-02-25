import 'package:diary_management/core/components/custom_text_from_field.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/routes/view/widgets/available_stores.dart';
import 'package:diary_management/features/routes/view/widgets/create_group_icon.dart';
import 'package:flutter/material.dart';

class RouteScreenElements extends StatelessWidget {
  const RouteScreenElements({
    super.key,
    required this.groupNameController,
  });

  final TextEditingController groupNameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Create Group:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Space.hSpace10,
          CustomTextFromField(
            controller: groupNameController,
            label: 'Group Name',
          ),
          Space.hSpace10,
          const Text(
            'Available Locations:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Space.hSpace10,
          AvailableStores(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CreateGroupIcon(groupNameController: groupNameController),
            ],
          ),
        ],
      ),
    );
  }
}
