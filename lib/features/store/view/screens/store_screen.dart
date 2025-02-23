import 'dart:developer';

import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/features/store/view/widget/add_store_custom_button.dart';
import 'package:diary_management/features/store/view/widget/store_details_card_widget.dart';
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          BlocBuilder<StoresBloc, StoresState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadedState: (stores) {
                  return ListView.builder(
                    itemCount: stores.length,
                    itemBuilder: (context, index) {
                      final store = stores[index];
                      log(store.visitTimestamp?.minute.toString()??'');
                      return StoreDetailsCardWidget(store: store);
                    },
                  );
                },
                loadingState:
                    () => const Center(child: CircularProgressIndicator()),
                orElse: () => Center(child: const Text('Loading...')),
              );
            },
          ),
          AddStoreCustomButton(),
        ],
      ),
    );
  }
}
