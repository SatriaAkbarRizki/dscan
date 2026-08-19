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
            // Navigator.pop(context);
            showRenameDialog(context);
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
            showDeleteDialog(context);
          },
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}

void showRenameDialog(BuildContext context) {
  final TextEditingController renameController = TextEditingController();

  showDialog(
    context: context,

    builder: (_) => AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        'Rename Document',
        style: Theme.of(context).textTheme.titleSmall,
      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Cancel',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Save',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontSize: 12,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      content: Builder(
        builder: (context) {
          return SizedBox(
            width: 500,
            child: TextField(
              controller: renameController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Enter file name',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

void showDeleteDialog(BuildContext context) {
  showDialog(
    context: context,

    builder: (_) => AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        'Are you sure?',
        style: Theme.of(context).textTheme.titleSmall,
      ),

      content: Builder(
        builder: (context) {
          return SizedBox(
            width: 500,
            child: Text(
              'Delete document scan',
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(fontSize: 12),
            ),
          );
        },
      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Cancel',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(const Color(0xffffe5d9)),
          ),
          child: Text(
            'Delete',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(fontSize: 12, color: Colors.red),
          ),
        ),
      ],

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
    ),
  );
}
