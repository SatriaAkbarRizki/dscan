import 'package:flutter/material.dart';

class SearchBoxRecent extends StatelessWidget {
  const SearchBoxRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.search),
            Text(
              "Seacrh recent scans",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
