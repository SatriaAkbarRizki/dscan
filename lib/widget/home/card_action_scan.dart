import 'package:flutter/material.dart';

class CardActionScanHome extends StatelessWidget {
  const CardActionScanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 2,
          child: SizedBox(
            width: double.infinity,
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                Text(
                  'Camera Scan',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'Use device camera',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: SizedBox(
            width: double.infinity,
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                Text(
                  'Camera Scan',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'Use device camera',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
