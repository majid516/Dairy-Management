import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/drivers/view/widgets/add_driver_button.dart';
import 'package:diary_management/features/drivers/view/widgets/custom_driver_card.dart';
import 'package:diary_management/features/drivers/view/widgets/show_driver_dialog.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriversScreen extends StatelessWidget {
  const DriversScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DriversBloc>().add(DriversEvent.fetchAllDrivers());
    return Scaffold(
      appBar: CustomAppBar(title: 'Drivers Management', action: () {
        Navigator.pop(context);
      }),
      body: Stack(
        alignment: Alignment.center,
        children: [
          BlocBuilder<DriversBloc, DriversState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadedState: (drivers) {
                  return ListView.builder(
                    itemCount: drivers.length,
                    itemBuilder: (context, index) {
                      final driver = drivers[index];
                      return CustomDriverCard(
                        driver: driver,
                        index: index,
                        onEdit: () {
                          showDriverDialog(context, driver);
                        },
                        onDelete: () {
                          context.read<DriversBloc>().add(
                            DriversEvent.removeDriver(driver.id),
                          );
                        },
                      );
                    },
                  );
                },
                loadingState:
                    () => const Center(child: CircularProgressIndicator()),
                orElse: () => Center(child: const Text('Loading...')),
              );
            },
          ),
          AddDriverButton(),
        ],
      ),
    );
  }
}
