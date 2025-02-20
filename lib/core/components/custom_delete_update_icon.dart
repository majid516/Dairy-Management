import 'package:flutter/material.dart';

class CustomDeleteUpdateIcon extends StatelessWidget {
  final IconData icon; final Color color;final Function() onTap;
  const CustomDeleteUpdateIcon( {super.key, required this.icon, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withValues(alpha: 0.1),
        
        ),
        child: Icon(icon, color: color, size: 22),
      ),
    );
  }
}