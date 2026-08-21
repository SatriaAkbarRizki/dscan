import 'package:dscan/riverpod/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CardActionScanHome extends ConsumerWidget {
  const CardActionScanHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerImage = ref.watch(imageRiverpod.notifier);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.85,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index == 0) {
              providerImage.pickImageGallery();
            }
            providerImage.pickImageCamera();
          },
          child: Card(
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
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        index == 0
                            ? 'assets/icons/icon-image.svg'
                            : 'assets/icons/icon-camera.svg',
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    index == 0 ? 'Image Scan' : 'Camera Scan',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    index == 0 ? 'Use Image from Gallery' : 'Use device camera',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
