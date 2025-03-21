import 'dart:developer';
import 'package:diary_management/core/constants/colors.dart';
import 'package:diary_management/core/components/custom_app_bar.dart';
import 'package:diary_management/core/components/custom_snackbar.dart';
import 'package:diary_management/core/services/generate_id.dart';
import 'package:diary_management/core/constants/vlidators.dart';
import 'package:diary_management/features/store/model/store_model.dart';
import 'package:diary_management/features/store/view/screens/location_screen.dart';
import 'package:diary_management/features/store/view/widget/body_elements.dart';
import 'package:diary_management/features/store/view_model/bloc/stores_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class AddStoreScreen extends StatefulWidget {
  final Store? existingStore;
  const AddStoreScreen({super.key, this.existingStore});

  @override
  State<AddStoreScreen> createState() => _AddStoreScreenState();
}

class _AddStoreScreenState extends State<AddStoreScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  LatLng? selectedLocation;
  String? address;

  @override
  void initState() {
    super.initState();
    if (widget.existingStore != null) {
      nameController.text = widget.existingStore!.name;
      phoneController.text = widget.existingStore!.contactNumber;
      selectedLocation = LatLng(
        widget.existingStore!.latitude,
        widget.existingStore!.longitude,
      );
      getAddressFromLatLng(
        widget.existingStore!.latitude,
        widget.existingStore!.longitude,
      );
    }
  }

  void pickLocation() async {
    LatLng? result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationScreen()),
    );
    if (result != null) {
      setState(() {
        selectedLocation = result;
      });
      getAddressFromLatLng(result.latitude, result.longitude);
    }
  }

  Future<void> getAddressFromLatLng(double lat, double lng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          address =
              "${place.postalCode}, ${place.street}, ${place.locality}, ${place.country}";
        });
      }
    } catch (e) {
      log("Error fetching address: $e");
    }
  }

  void submitStore() {
    final contactValid = FormValidators.isValidPhoneNumber(
      phoneController.text.trim(),
    );

    if (nameController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty &&
        selectedLocation != null) {
      if (contactValid) {
        final store = Store(
          id: widget.existingStore?.id ?? generateRandomNumber().toString(),
          name: nameController.text,
          contactNumber: phoneController.text.trim(),
          address: address ?? 'Unknown Address',
          latitude: selectedLocation?.latitude ?? 0.0,
          longitude: selectedLocation?.longitude ?? 0.0,
          isVisited: widget.existingStore?.isVisited ?? false,
          visitTimestamp: widget.existingStore?.visitTimestamp,
          isAssigned: widget.existingStore?.isAssigned ?? false,
        );

        if (widget.existingStore == null) {
          context.read<StoresBloc>().add(StoresEvent.addStore(store));
        } else {
          context.read<StoresBloc>().add(
            StoresEvent.updateStore(store.id, store),
          );
        }

        showCustomSnackBar(context, 'store added successfully', false);
        Navigator.pop(context);
      } else {
        showCustomSnackBar(context, 'contact number is not valid', true);
      }
    } else {
      showCustomSnackBar(context, 'fill required fields', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.existingStore == null ? "Add Store" : "Update Store",
        action: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: MyColors.whiteColor,
      body: BodyElements(
        nameController: nameController,
        phoneController: phoneController,
        selectedLocation: selectedLocation,
        address: address,
        pickLocation: pickLocation,
        submitStore: submitStore,
      ),
    );
  }
}
