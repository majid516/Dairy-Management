import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:flutter/material.dart';

class TitileWidget extends StatelessWidget {
  const TitileWidget({
    super.key,
    required this.group,
  });

  final RouteGroupModel group;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (group.asignedDriver != null)
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                group.asignedDriver!.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                width: ScreenSize.width * 0.36,
                height: 28,
                decoration: BoxDecoration(
                  color: MyColors.primaryColor.withValues(
                    alpha: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Driver Assigned',
                    style: TextStyle(
                      color: MyColors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        Text(
          group.groupName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
