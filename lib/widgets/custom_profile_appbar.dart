import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'My Profile',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(3),
            child: Icon(
              CupertinoIcons.chevron_down,
              size: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.plus_app,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dehaze_outlined,
              color: Colors.black,
            )),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
