import 'dart:developer';
import 'dart:io';

import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/screen_size.dart';
import 'package:diary_management/features/drivers/view_model/drivers_bloc/drivers_bloc.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesGroupsScreen extends StatelessWidget {
  const RoutesGroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RouteGroupBloc>().add(RouteGroupEvent.fetchAllGroups());
    context.read<DriversBloc>().add(DriversEvent.fetchAllDrivers());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Routes Groups',
        action: () => Navigator.pop(context),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: BlocBuilder<RouteGroupBloc, RouteGroupState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: Text('Loading...')),
              error: (message) => Center(child: Text(message)),
              loaded: (groups) {
                return ListView.builder(
                  itemCount: groups.length,
                  itemBuilder: (context, index) {
                    final group = groups[index];
                    log(group.id);
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
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
                                (ctx) => AlertDialog(
                                  backgroundColor: MyColors.whiteColor,
                                  contentPadding: EdgeInsets.zero,
                                  content: SizedBox(
                                    width: ScreenSize.width * 0.8,
                                    child: BlocBuilder<
                                      DriversBloc,
                                      DriversState
                                    >(
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          loadedState: (drivers) {
                                            return SizedBox(
                                              height:
                                                  drivers.length * 70.0 > 400
                                                      ? 400
                                                      : drivers.length * 70.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                ),
                                                child: ListView.separated(
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (
                                                        context,
                                                        index,
                                                      ) => Divider(
                                                        height: 0,
                                                        color:
                                                            MyColors
                                                                .primaryColor,
                                                      ),
                                                  itemCount: drivers.length,
                                                  itemBuilder: (
                                                    context,
                                                    index,
                                                  ) {
                                                    final driver =
                                                        drivers[index];
                                                    return ListTile(
                                                      onTap: () {
                                                        final updatedGroup =
                                                            RouteGroupModel(
                                                              asignedDriver:
                                                                  driver,
                                                              groupName:
                                                                  group
                                                                      .groupName,
                                                              routes:
                                                                  group.routes,
                                                              id: group.id,
                                                            );
                                                        context
                                                            .read<
                                                              RouteGroupBloc
                                                            >()
                                                            .add(
                                                              RouteGroupEvent.update(
                                                                updatedGroup,
                                                              ),
                                                            );
                                                        Navigator.pop(
                                                          context,
                                                          driver.id,
                                                        );
                                                      },
                                                      leading: CircleAvatar(
                                                        radius: 30,
                                                        backgroundImage:
                                                            FileImage(
                                                              File(
                                                                driver.image,
                                                              ),
                                                            ),
                                                      ),
                                                      title: Text(
                                                        driver.name,
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,
                                                          letterSpacing: 0.5,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        'Contact: ${driver.contactNumber}',
                                                        style: TextStyle(
                                                          color:
                                                              Colors
                                                                  .grey
                                                                  .shade600,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                          loadingState:
                                              () => const SizedBox(
                                                height: 100,
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              ),
                                          orElse:
                                              () => const SizedBox(
                                                height: 100,
                                                child: Center(
                                                  child: Text('Loading...'),
                                                ),
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                          );
                        },
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (group.asignedDriver != null)
                              Text(
                                group.asignedDriver!.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            Text(
                              group.groupName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text('Locations: ${group.routes.join(', ')}'),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
