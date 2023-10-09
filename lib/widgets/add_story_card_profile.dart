import 'package:flutter/material.dart';

class AddStoryCardProfile extends StatelessWidget {
  const AddStoryCardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "images/8.jpg",
              ),
            ),
            Positioned(
                top: 55,
                left: 55,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 20,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
