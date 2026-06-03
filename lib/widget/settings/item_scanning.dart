import 'package:flutter/material.dart';

class ItemScanningSettings extends StatelessWidget {
  const ItemScanningSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,

      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            leading: const Icon(
              Icons.document_scanner_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "Auto-capture",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            subtitle: Text(
              "Automatically detect and scan",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Switch(
              value: true,
              padding: EdgeInsets.all(0),
              activeTrackColor: Color(0xFF003E6B),
              onChanged: (value) {},
            ),
          ),
          Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            leading: Icon(
              Icons.high_quality_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "Quality",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            trailing: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("High", style: Theme.of(context).textTheme.bodySmall),
                  Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
            onTap: () {},
          ),
          Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            leading: Icon(
              Icons.picture_as_pdf_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "Default Format",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            trailing: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("PDF", style: Theme.of(context).textTheme.bodySmall),
                  Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
