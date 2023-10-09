import 'package:clone_ig/data/data1.dart';
import 'package:clone_ig/widgets/custom_profile_appbar.dart';
import 'package:clone_ig/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomProfileAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              SliverToBoxAdapter(
                child: ProfileHeader(),
              ),
            ];
          },
          body: Column(
            children: [
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      physics: BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemCount: postImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GridTile(
                            child: Image.asset(
                          postImages[index],
                          fit: BoxFit.cover,
                        ));
                      },
                    ),
                    Center(
                      child: Column(children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'Photos and videos of you ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'When people tag you in photos and videos,theyll appear here ',
                            style: TextStyle(),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
