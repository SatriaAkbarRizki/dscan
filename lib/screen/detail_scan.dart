import 'package:dscan/widget/general/item_scan.dart';
import 'package:flutter/material.dart';

class DetailScan extends StatelessWidget {
  const DetailScan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('Dscan', style: Theme.of(context).textTheme.titleMedium),
        titleSpacing: 0,
      ),
      body: SizedBox(
        height: 250,

        child: ListView.builder(
          itemCount: 2,

          itemBuilder: (context, index) => ItemScanGeneral(),
        ),
      ),
    );
  }
}
