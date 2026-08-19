import 'package:dscan/widget/general/item_scan.dart';
import 'package:dscan/widget/general/item_scan_horinzontal.dart';
import 'package:dscan/widget/general/popup.dart';
import 'package:flutter/material.dart';

class DetailScan extends StatelessWidget {
  const DetailScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leadingWidth: 40,
        title: Text(
          'Title First Documment Scan',
          style: Theme.of(context).textTheme.titleMedium,
        ),

        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onLongPress: () => showItemActions(context),
            child: ItemScanGeneralHorizontal(),
          ),
        ),
      ),
    );
  }
}
