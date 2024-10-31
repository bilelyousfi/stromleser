import 'package:flutter/material.dart';

class DeviceImage extends StatelessWidget {
  const DeviceImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/device.png', height: 200);
  }
}
