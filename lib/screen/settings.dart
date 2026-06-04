import 'package:dscan/widget/settings/item_app.dart';
import 'package:dscan/widget/settings/item_scanning.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Dscan', style: Theme.of(context).textTheme.titleMedium),
        titleSpacing: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          Text('Scanning', style: Theme.of(context).textTheme.titleSmall),
          ItemScanningSettings(),
          Text('App', style: Theme.of(context).textTheme.titleSmall),
          ItemAppScreen(),
          Spacer(),
          Center(
            child: Text(
              'Version 1.0.1',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
