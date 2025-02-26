import 'package:diary_management/core/colors.dart';
import 'package:flutter/material.dart';

class StoreVisitDataBox extends StatelessWidget {
  final int totalStores;
  final int visitedStores;

  const StoreVisitDataBox({
    super.key,
    required this.totalStores,
    required this.visitedStores,
  });

  @override
  Widget build(BuildContext context) {
    final double progressValue =
        totalStores > 0 ? visitedStores / totalStores : 0.0;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Store Visits Progress',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.secondaryColor,
            ),
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: progressValue,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(MyColors.primaryColor),
            minHeight: 12,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$visitedStores of $totalStores stores visited',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: MyColors.blackColor.withValues(alpha: 0.6),
                ),
              ),
              Text(
                '${(progressValue * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: MyColors.blackColor.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
