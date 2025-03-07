import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/routes/view_model/cubit/route_cubit.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoresList extends StatelessWidget {
  const StoresList({
    super.key,
    required this.stores,
  });

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<RouteSelectionCubit, List<Store>>(
        builder: (context, selectedRoutes) {
          return ListView.separated(
            separatorBuilder:
                (context, index) => Divider(
                  height: 0,
                  color: MyColors.primaryColor,
                ),
            itemCount: stores.length,
            itemBuilder: (context, index) {
              final store = stores[index];
              final isSelected = selectedRoutes.any(
                (route) => route.address == store.address,
              );
              return CheckboxListTile(
                title: Text(
                  store.name,
                  style: const TextStyle(fontSize: 16),
                ),
                subtitle: Text(store.address),
                checkboxShape: CircleBorder(),
                activeColor: MyColors.secondaryColor,
                value: isSelected,
                onChanged: (bool? value) {
                  context
                      .read<RouteSelectionCubit>()
                      .toggleRoute(store);
                },
              );
            },
          );
        },
      ),
    );
  }
}
