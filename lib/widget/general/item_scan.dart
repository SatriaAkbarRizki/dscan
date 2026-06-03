import 'package:flutter/material.dart';

class ItemScanGeneral extends StatelessWidget {
  const ItemScanGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/museums-victoria-SE5wx-EmRLo-unsplash.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "3 pages",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    "Invoice_Q3.pdf",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),

                  Text("Today", style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
