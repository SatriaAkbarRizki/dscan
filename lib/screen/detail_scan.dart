import 'package:dscan/riverpod/general.dart';
import 'package:dscan/riverpod/image.dart';
import 'package:dscan/widget/detail/floatingactioncard.dart';
import 'package:dscan/widget/general/item_scan_horinzontal.dart';
import 'package:dscan/widget/general/popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailScan extends ConsumerWidget {
  const DetailScan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isExpanded = ref.watch(actionButtonDetailRiverpod);
    final providerImage = ref.read(imageRiverpod.notifier);
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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isExpanded) ...[
            FloatingActionCard(
              icon: 'assets/icons/icon-image.svg',
              title: 'Image Scan',
              subtitle: 'Use Image from Gallery',
              onTap: () {
                providerImage.pickImageGallery();
                isExpanded = !isExpanded;
              },
            ),
            const SizedBox(height: 12),
            FloatingActionCard(
              icon: 'assets/icons/icon-camera.svg',
              title: 'Camera Scan',
              subtitle: 'Use device camera',
              onTap: () {
                final providerImage = ref.read(imageRiverpod.notifier);
                providerImage.pickImageCamera();
                isExpanded = !isExpanded;
              },
            ),
            const SizedBox(height: 16),
          ],

          FloatingActionButton(
            onPressed: () {
              ref.read(actionButtonDetailRiverpod.notifier).state = !ref.read(
                actionButtonDetailRiverpod,
              );
            },
          ),
        ],
      ),
    );
  }
}
