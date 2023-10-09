import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddpostAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AddpostAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(),
      title: Text(
        'New Post',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.clear)),
      actions: [TextButton(onPressed: () {}, child: Text('Next'))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
