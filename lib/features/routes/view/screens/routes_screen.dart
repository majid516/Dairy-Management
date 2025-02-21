import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/components/custom_text_from_field.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/routes/model/route_group_model.dart';
import 'package:diary_management/features/routes/view/screens/routes_group_screen.dart';
import 'package:diary_management/features/routes/view_model/bloc/route_group_bloc.dart';
import 'package:diary_management/features/routes/view_model/bloc/routes_bloc.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

class RouteManagementScreen extends StatelessWidget {
  const RouteManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RoutesBloc>().add(RoutesEvent.loadRoutes());
    context.read<StoresBloc>().add(StoresEvent.fetchAllStores());
    final TextEditingController groupNameController = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(title: 'Routes Management', action:()=> Navigator.pop(context),widget: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (ctx)=>RoutesGroupsScreen()));
      }, icon: Icon(LucideIcons.map,color: MyColors.whiteColor,)),),
      
      
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create Group:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Space.hSpace10,
           CustomTextFromField(controller: groupNameController, label: 'Group Name'),
           
            
            Space.hSpace10,
            const Text(
              'Available Locations:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Space.hSpace10,
            BlocBuilder<StoresBloc, StoresState>(
              builder: (context, state) {
              return  state.maybeWhen(
                orElse: () => Center(child: Text('loading'),),
                loadedState: (stores) {
                  List<String> locations = stores.map((e) => e.address,).toList();
                   return Expanded(
                  child: BlocBuilder<RouteSelectionCubit, List<String>>(
                    builder: (context, selectedRoutes) {
                      return ListView.separated(
                        separatorBuilder: (context, index) => Divider(height: 0,color: MyColors.primaryColor,),
                        itemCount: locations.length,
                        itemBuilder: (context, index) {
                          final location = locations[index];
                          return CheckboxListTile(
                            title: Text(
                              location,
                              style: const TextStyle(fontSize: 16),
                            ),
                            checkboxShape: CircleBorder(),
                            activeColor: MyColors.secondaryColor,
                         
                            value: selectedRoutes.contains(location),
                            onChanged: (bool? value) {
                              context.read<RouteSelectionCubit>().toggleRoute(
                                location,
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                );
                }, );

               
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                final selectedRoutes =
                    context.read<RouteSelectionCubit>().state;
                if (selectedRoutes.isNotEmpty &&
                    groupNameController.text.trim().isNotEmpty) {
                      final name = groupNameController.text.trim();
                      final group = RouteGroupModel(id: generateRandomNumber().toString(),asignedDriver: null, groupName: name, routes: selectedRoutes);
                 context.read<RouteGroupBloc>().add(RouteGroupEvent.addNewGroup(group));
                  context.read<RouteSelectionCubit>().clearSelection();
                  groupNameController.clear();
                }
              },
              child: const Text(
                'Create Group',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
