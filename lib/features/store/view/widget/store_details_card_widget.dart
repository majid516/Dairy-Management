import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view/widget/store_list_tile_widget.dart';
import 'package:flutter/material.dart';

class StoreDetailsCardWidget extends StatelessWidget {
  const StoreDetailsCardWidget({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: MyColors.secondaryColor.withValues(
            alpha: 0.3,
          ),
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
      child: StoreListTileWidget(store: store),
    );
  }
}
