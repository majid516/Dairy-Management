import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view/widget/list_trailing_widget.dart';
import 'package:flutter/material.dart';

class StoreListTileWidget extends StatelessWidget {
  const StoreListTileWidget({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      leading: CircleAvatar(
        radius: 22,
    
        backgroundColor: MyColors.secondaryColor.withValues(
          alpha: 0.2,
        ),
        child: Center(
          child: Text(
            store.name[0],
            style: TextStyle(
              fontSize: 25,
              color: MyColors.secondaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      title: Text(
        store.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
      ),
      subtitle: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact: ${store.contactNumber}',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          Text(
            'Address: ${store.address}',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
      trailing: ListTrailingWidget(store: store),
    );
  }
}
