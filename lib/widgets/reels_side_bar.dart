import 'package:clone_ig/data/data.dart';
import 'package:clone_ig/widgets/costumicon.dart';
import 'package:flutter/material.dart';

class ReelSideBar extends StatefulWidget {
  const ReelSideBar({super.key});

  @override
  State<ReelSideBar> createState() => _ReelSideBarState();
}

class _ReelSideBarState extends State<ReelSideBar> {
  int index = 0;
  final double _iconSize = 28;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                iconSize: _iconSize,
                color: Colors.white,
              ),
              Text(
                '${posts[index].likes.toString()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              IconCostum(
                imagePath: 'images/coment.png',
                width: 20,
                height: 20,
                colors: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                '${posts[index].comments.toString()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              IconCostum(
                imagePath: 'images/share.png',
                width: 20,
                height: 20,
                colors: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                '${posts[index].shares.toString()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                iconSize: _iconSize,
                color: Colors.white,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(onlineUsers[index].imageUrl),
                          fit: BoxFit.cover))),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
