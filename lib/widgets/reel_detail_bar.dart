import 'package:clone_ig/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';

class Reelsdetail extends StatelessWidget {
  const Reelsdetail({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl = onlineUsers[0].imageUrl;
    return Container(
      child: Column(
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              'user profile',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            leading: CircleAvatar(
                radius: 14, backgroundImage: NetworkImage(imageUrl)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ExpandableText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis enim lorem. Sed maximus efficitur turpis, eget viverra dolor vehicula id. Proin a ultrices velit. Sed vel dignissim neque. Maecenas elit tellus, accumsan id dignissim a, maximus et ligula. Nam rutrum facilisis ipsum iaculis venenatis. Morbi porttitor, quam nec commodo sodales, ipsum odio pharetra turpis, eu eleifend eros nunc in est. Suspendisse consectetur ipsum tempus dolor eleifend dictum. Vestibulum eu efficitur lacus. Duis ut arcu luctus, scelerisque augue quis, placerat ligula.',
              style: TextStyle(
                  fontSize: 12.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              readMoreText: 'more',
              readLessText: 'less',
              trim: 2,
              linkTextStyle: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
              dense: true,
              minLeadingWidth: 0,
              horizontalTitleGap: 12,
              title: Text(
                'music title - original music',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.graphic_eq_outlined,
                size: 16,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
