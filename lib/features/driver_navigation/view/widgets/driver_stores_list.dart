import 'package:diary_management/core/colors.dart';
import 'package:diary_management/features/driver_navigation/view_model/bloc/navigation_bloc.dart';
import 'package:diary_management/features/drivers/model/driver_hive_model.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverStoresList extends StatelessWidget {
  final List<Store> stores;
  const DriverStoresList({
    super.key,
    required this.driver, required this.stores,
  });

  final Driver driver;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder:
            (context, index) => Divider(
              color: MyColors.primaryColor,
              height: 0,
            ),
        itemCount: stores.length,
        itemBuilder: (context, index) {
          final store = stores[index];
    
          return ListTile(
            title: Text(store.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact: ${store.contactNumber}"),
                Text("Location: ${store.address}"),
              ],
            ),
            onTap: () {
              context.read<NavigationBloc>().add(
                NavigationEvent.getRoute(store),
              );
            },
            trailing: IconButton(
              icon: Icon(
                Icons.check_box,
                color:
                    store.visitTimestamp != null
                        ? MyColors.secondaryColor
                        : Colors.grey,
              ),
              onPressed: () {
                final updatedStore = Store(
                  id: store.id,
                  name: store.name,
                  address: store.address,
                  contactNumber: store.contactNumber,
                  latitude: store.latitude,
                  longitude: store.longitude,
                  isVisited: true,
                  visitTimestamp: DateTime.now(),
                  isAssigned: store.isAssigned,
                );
    
                context.read<NavigationBloc>().add(
                  NavigationEvent.updateVisitStatus(
                    driver.id,
                    updatedStore,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
