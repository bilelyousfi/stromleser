import 'package:flutter/material.dart';
import '../helper/global.dart';

class PowerClockButtons extends StatelessWidget {
  final bool isPowerOn;
  final VoidCallback onPowerToggle;

  const PowerClockButtons({Key? key, required this.isPowerOn, required this.onPowerToggle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Power Button
        GestureDetector(
          onTap: onPowerToggle,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: isPowerOn ? AppColors.primary : AppColors.third,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(Icons.power_settings_new, color: AppColors.bgtexticon),
          ),
        ),

        // Clock Button
        Container(
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.access_time, color: AppColors.bgtexticon),
        ),
      ],

    );
  }
}
