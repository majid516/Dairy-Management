import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view/widgets/alert_box_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriversAlertBox extends StatelessWidget {
  const DriversAlertBox({
    super.key,
    required this.group,
  });

  final RouteGroupModel group;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColors.whiteColor,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: SizedBox(
        width: ScreenSize.width * 0.8,
        child: BlocBuilder<DriversBloc, DriversState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadedState: (drivers) {
                return AlertBoxListTile(
                  group: group,
                  drivers: drivers,
                );
              },
              loadingState:
                  () => const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              orElse:
                  () => const SizedBox(
                    height: 100,
                    child: Center(child: Text('Loading...')),
                  ),
            );
          },
        ),
      ),
    );
  }
}
