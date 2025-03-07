import 'dart:developer';
import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/constants/screen_size.dart';
import 'package:diary_management/features/routes/view/widgets/stores_list.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvailableStores extends StatelessWidget {
  const AvailableStores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresBloc, StoresState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Center(child: Text('Loading...')),
          loadedState: (storesList) {
            if (storesList.isEmpty) {
              log('no drivers');
              return SizedBox(
                height: ScreenSize.height * 0.58,
                child: Center(
                  child: Text(
                    'No Stores Found',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: MyColors.blackColor.withValues(alpha: 0.4),
                    ),
                  ),
                ),
              );
            }
            final stores =
                storesList.where((e) {
                  return e.isAssigned == false;
                }).toList();
            return StoresList(stores: stores);
          },
        );
      },
    );
  }
}
