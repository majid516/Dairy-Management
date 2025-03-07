import 'dart:developer';
import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/features/store/view/widget/store_details_card_widget.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreListWidet extends StatelessWidget {
  const StoreListWidet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresBloc, StoresState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadedState: (stores) {
            if (stores.isEmpty) {
              log('no drivers');
              return Center(
                child: Text(
                  'No Stores Found',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: MyColors.blackColor.withValues(alpha: 0.4),
                  ),
                ),
              );
            }
            return ListView.builder(
              itemCount: stores.length,
              itemBuilder: (context, index) {
                final store = stores[index];
                log(store.visitTimestamp?.minute.toString() ?? '');
                return StoreDetailsCardWidget(store: store);
              },
            );
          },
          loadingState:
              () => const Center(child: CircularProgressIndicator()),
          orElse: () => Center(child: const Text('Loading...')),
        );
      },
    );
  }
}
