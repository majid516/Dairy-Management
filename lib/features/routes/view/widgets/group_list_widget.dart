import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view/widgets/drivers_alert_box.dart';
import 'package:diary_management/features/routes/view/widgets/titile_widget.dart';
import 'package:flutter/material.dart';

class GroupListWidget extends StatelessWidget {
  final List<RouteGroupModel> groups;
  const GroupListWidget({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
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
          child: ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder:
                    (ctx) => DriversAlertBox(group: group),
              );
            },
            title: TitileWidget(group: group),
            subtitle: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: group.stores.length,
              itemBuilder: (context, index) {
                return Text('Location: ${group.stores[index].address}');
              },
            ),
          ),
        );
      },
    );
  }
}
