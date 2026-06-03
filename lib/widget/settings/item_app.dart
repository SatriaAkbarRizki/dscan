import 'package:flutter/material.dart';

class ItemAppScreen extends StatelessWidget {
  const ItemAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,

      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            leading: const Icon(
              Icons.notifications_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "Notifications",
              style: Theme.of(context).textTheme.labelMedium,
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
              Icons.style_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "Theme",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "System Default",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
            onTap: () {},
          ),
          Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            contentPadding: EdgeInsets.only(left: 10, right: 10),
            leading: Icon(
              Icons.monetization_on_outlined,
              size: 22,
              color: Color(0xFF334E68),
            ),
            title: Text(
              "You like?, donate me :)",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            trailing: SizedBox(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.chevron_right, color: Colors.grey)],
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
