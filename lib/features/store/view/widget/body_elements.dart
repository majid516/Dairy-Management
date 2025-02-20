import 'package:diary_management/core/components/custom_text_from_field.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:diary_management/features/store/view/widget/address_tile_widget.dart';
import 'package:diary_management/features/store/view/widget/show_location_card_widget.dart';
import 'package:diary_management/features/store/view/widget/submit_store_button.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class BodyElements extends StatelessWidget {
  final VoidCallback submitStore;
  final VoidCallback pickLocation;
  final LatLng? selectedLocation;
  final String? address;
   BodyElements({
    super.key,
    required this.nameController,
    required this.phoneController, required this.submitStore, required this.pickLocation, required this.address, this.selectedLocation,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
final LatLng initialLocation = LatLng(11.2111, 75.9404);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Store Name:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CustomTextFromField(
                controller: nameController,
                label: "Store Name",
              ),
              Text(
                "Phone:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CustomTextFromField(
                controller: phoneController,
                label: 'Phone',
                keyboardType: TextInputType.phone,
              ),
              Text(
                "Selected Address:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              AddressTileWidget(address: address,action: pickLocation,),
                
              ShowLocationCardWidget(selectedLocation: selectedLocation, initialLocation: initialLocation,action: pickLocation,),
                
              Space.hSpace20,
            ],
          ),
        ),
    
        SubmitStoreButton(action: submitStore,),
      ],
    );
  }
}
