import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void showItemActions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 4,
          margin: const EdgeInsets.only(top: 12, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/icon-edit.svg'),
          title: Text(
            'Rename',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: SvgPicture.asset('assets/icons/icon-share.svg'),
          title: Text(
            'Share',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/icons/icon-remove.svg',
            colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
          ),
          title: Text(
            'Delete',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12, color: Colors.red),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}
