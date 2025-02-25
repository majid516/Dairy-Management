import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:diary_management/core/colors.dart';
import 'package:diary_management/core/spaces/space.dart';
import 'package:flutter/material.dart';

class VisitedProgressElements extends StatelessWidget {
  const VisitedProgressElements({
    super.key,
    required this.visitedStores,
    required this.totalStores,
    required this.percentage,
  });

  final int visitedStores;
  final int totalStores;
  final double percentage;

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Store Visits',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
            Space.hSpace10,
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: visitedStores / totalStores,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(MyColors.primaryColor),
                    minHeight: 12,
                  ),
                ),
              ),
             Space.wSpace10,
              Text(
                '${percentage.toStringAsFixed(0)}%',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          
          Text(
            '$visitedStores of $totalStores stores visited',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
