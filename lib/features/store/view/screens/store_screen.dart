import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/store/view/widget/add_store_custom_button.dart';
import 'package:diary_management/features/store/view/widget/store_list_widet.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StoresBloc>().add(StoresEvent.fetchAllStores());
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Store Management',
        action: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: MyColors.whiteColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          StoreListWidet(),
          AddStoreCustomButton(),
        ],
      ),
    );
  }
}
