import 'package:flutter/material.dart';
import '../helper/global.dart';
import '../widget/app_bar_widget.dart';
import '../widget/ausgang_section.dart';
import '../widget/consumption_section.dart';
import '../widget/device_image.dart';
import '../widget/energy_section.dart';
import '../widget/power_clock_buttons.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPowerOn = false; // To toggle the power button background

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: const AppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DeviceImage(),
          AusgangSection(),
          PowerClockButtons(
            isPowerOn: isPowerOn,
            onPowerToggle: () {
              setState(() {
                isPowerOn = !isPowerOn;
              });
            },
          ),
          const Divider(
            color: AppColors.primary,
            thickness: 1,
            height: 40,
          ),
          const EnergySection(),
          const ConsumptionSection(),
        ],
      ),
    );
  }
}
