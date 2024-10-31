import 'package:flutter/material.dart';
import '../helper/global.dart';

class AusgangSection extends StatelessWidget {
  const AusgangSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.second,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Ausgang',
            style: TextStyle(fontSize: 20, color: AppColors.bgtexticon),
          ),
          SizedBox(height: 8),
          Text(
            '--',
            style: TextStyle(fontSize: 20, color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
