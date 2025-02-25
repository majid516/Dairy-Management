import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view/widgets/create_group_button_base_design.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateGroupIcon extends StatelessWidget {
  const CreateGroupIcon({
    super.key,
    required this.groupNameController,
  });

  final TextEditingController groupNameController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final List<Store> selectedRoutes =
            context.read<RouteSelectionCubit>().state;
        if (selectedRoutes.isNotEmpty &&
            groupNameController.text.trim().isNotEmpty) {
          final name = groupNameController.text.trim();
    
          final group = RouteGroupModel(
            id: generateRandomNumber().toString(),
            asignedDriver: null,
            groupName: name,
            stores:
                selectedRoutes.map((store) {
                  final updatedStore = Store(
                    id: store.id,
                    name: store.name,
                    address: store.address,
                    contactNumber: store.contactNumber,
                    latitude: store.latitude,
                    longitude: store.longitude,
                    isVisited: store.isVisited,
                    visitTimestamp: store.visitTimestamp,
                    isAssigned: true,
                  );
                  context.read<StoresBloc>().add(StoresEvent.updateStore(store.id, updatedStore));
                  return updatedStore;
                }).toList(),
          );
    
          showCustomSnackBar(
            context,
            '${groupNameController.text.trim()} group created',
            false,
          );
          context.read<RouteGroupBloc>().add(
            RouteGroupEvent.addNewGroup(group),
          );
          context.read<RouteSelectionCubit>().clearSelection();
          groupNameController.clear();
        } else if (selectedRoutes.isEmpty) {
          showCustomSnackBar(context, 'select shops', true);
        } else if (groupNameController.text.trim().isEmpty) {
          showCustomSnackBar(context, 'add group name', true);
        }
      },
      child: CreateGroupButtonBaseDesign(),
    );
  }
}
