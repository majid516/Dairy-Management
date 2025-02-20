import 'package:flutter/material.dart';

class AddressTileWidget extends StatelessWidget {
    final VoidCallback action;

  const AddressTileWidget({
    super.key,
    required this.address, required this.action,
  });

  final String? address;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
              action,
            
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(address ?? "No Address Selected"),
      ),
    );
  }
}
