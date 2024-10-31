import 'package:flutter/material.dart';
import '../helper/global.dart';

class EnergySection extends StatelessWidget {
  const EnergySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Energy',
            style: TextStyle(fontSize: 18, color: AppColors.white),
          ),
          // Calendar Background
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.calendar_month_rounded, color: AppColors.white),
                const SizedBox(width: 8),
                Text(
                  '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                  style: const TextStyle(fontSize: 12, color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
