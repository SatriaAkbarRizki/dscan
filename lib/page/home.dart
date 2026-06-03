import 'package:dscan/widget/general/item_scan.dart';
import 'package:dscan/widget/home/card_action_scan.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Dscan', style: Theme.of(context).textTheme.titleLarge),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              "Ready to scan?",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Digitize your physical documents instantly with high precision.",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            CardActionScanHome(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Scans',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemBuilder: (context, index) => ItemScanGeneral(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
