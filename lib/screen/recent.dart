import 'package:dscan/widget/general/item_scan.dart';
import 'package:dscan/widget/recent/search_box.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatelessWidget {
  const RecentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Dscan', style: Theme.of(context).textTheme.titleLarge),
        titleSpacing: 0,
      ),
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBoxRecent(),
          Flexible(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.55,
              ),
              itemBuilder: (context, index) => ItemScanGeneral(),
            ),
          ),
        ],
      ),
    );
  }
}
