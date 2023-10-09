// ignore: depend_on_referenced_packages
import 'package:clone_ig/pages/Search_page.dart';
import 'package:clone_ig/pages/home_page.dart';
import 'package:clone_ig/pages/post_page.dart';
import 'package:clone_ig/pages/profile_page.dart';
import 'package:clone_ig/pages/reels_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    HomeIg(
      function: () {},
    ),
    Searchpage(),
    Postpage(),
    ReelsPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  bool isLiked = false;
  bool isSave = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STORY
      body: _pages[currentPageIndex],

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_filled,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.search,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
              label: '',
              icon: IconButton(
                icon: Icon(
                  CupertinoIcons.plus_app,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Postpage()));
                },
              )),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.video_library_outlined,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              CupertinoIcons.profile_circled,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
