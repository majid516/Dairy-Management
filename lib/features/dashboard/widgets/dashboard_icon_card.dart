import 'package:flutter/material.dart';

class DashboardIconCard extends StatelessWidget {
  final BuildContext context;
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  const DashboardIconCard(
    this.context,
    this.label,
    this.icon,
    this.color,
    this.onTap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color.withValues(alpha: 0.2),
            child: Icon(icon, size: 30, color: color),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
