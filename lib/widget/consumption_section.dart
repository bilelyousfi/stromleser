import 'package:flutter/material.dart';
import '../helper/global.dart';

class ConsumptionSection extends StatelessWidget {
  const ConsumptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        children: [
          const Text(
            'Consumption',
            style: TextStyle(fontSize: 20, color: AppColors.bgtexticon),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 20, color: AppColors.white),
          ),
          const SizedBox(height: 16.0), // Space above the icon

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.event_note_rounded,
                color: AppColors.bgtexticon,
                size: 150, // Increased size for visibility
              ),
            ],
          ),
        ],
      ),
    );
  }
}
