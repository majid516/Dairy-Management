import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/components/custom_delete_update_icon.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view/widget/add_store_screen.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListTrailingWidget extends StatelessWidget {
  const ListTrailingWidget({super.key, required this.store});

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomDeleteUpdateIcon(
          icon: Icons.edit,
          color: MyColors.secondaryColor,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => AddStoreScreen(existingStore: store),
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        CustomDeleteUpdateIcon(
          icon: Icons.delete,
          color: MyColors.secondaryColor,
          onTap: () {
            context.read<StoresBloc>().add(StoresEvent.removeStore(store.id));
          },
        ),
      ],
    );
  }
}
