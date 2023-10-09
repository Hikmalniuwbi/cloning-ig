import 'package:clone_ig/data/data.dart';
import 'package:clone_ig/widgets/add_story_card_profile.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                AddStoryCardProfile(),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'My Profile',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.4),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Bio Goes Here',
                  style: TextStyle(letterSpacing: 0.4, fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      '23',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(fontSize: 15, letterSpacing: 0.4),
                    ),
                    SizedBox(
                      width: 95,
                      height: 50,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '1.5M',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 15, letterSpacing: 0.4),
                    ),
                    SizedBox(
                      width: 95,
                      height: 50,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '123',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 15, letterSpacing: 0.4),
                    ),
                    SizedBox(
                      width: 95,
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size(0, 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(0, 30),
                    padding: EdgeInsets.symmetric(horizontal: 20)),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Share Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: Size(0, 30),
                    padding: EdgeInsets.symmetric(horizontal: 5)),
                onPressed: () {},
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.person_add_alt_1_sharp,
                      size: 18,
                      color: Colors.black,
                    ))),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        // HIGLIGHT SOROTAN

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 85,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (BuildContext context, int index) {
                int number = index + 1;
                return Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: ClipOval(
                            child: Image.network(
                              stories[index].imageUrl,
                              height: 58,
                              width: 58,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'Highlight $number',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
