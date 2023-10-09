import 'package:clone_ig/data/data.dart';
import 'package:clone_ig/data/data1.dart';
import 'package:clone_ig/widgets/costumicon.dart';
import 'package:flutter/material.dart';

class HomeIg extends StatefulWidget {
  final Function function;
  const HomeIg({super.key, required this.function});

  @override
  State<HomeIg> createState() => _HomeIgState();
}

class _HomeIgState extends State<HomeIg> with SingleTickerProviderStateMixin {
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  bool _isLikeds = false;
  late AnimationController _likesAnimationController;

  @override
  void initState() {
    super.initState();
    _likesAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // Sesuaikan durasi animasi
    );
  }

  void _toggleLike() {
    setState(() {
      _isLikeds = true;
    });

    _likesAnimationController.forward().then((_) {
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          _isLikeds = false;
        });
        _likesAnimationController.reset();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: Colors.grey,
        onRefresh: onRefresh,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              elevation: 1,
              pinned: false,
              snap: true,
              floating: true,
              flexibleSpace: const FlexibleSpaceBar(),
              title: Image.asset(
                "images/instagram.png",
                height: 50,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: IconCostum(
                    imagePath: 'images/share.png',
                    width: 22,
                    height: 22,
                    colors: Colors.black,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // YOUR STORY
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    InkResponse(
                                      splashColor: Colors.white38,
                                      radius: 40,
                                      onTap: () {},
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: 37,
                                            child: CircleAvatar(
                                              radius: 33,
                                              backgroundImage: AssetImage(
                                                "images/8.jpg",
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: -8,
                                              right: -10,
                                              child: RawMaterialButton(
                                                padding: EdgeInsets.all(3),
                                                onPressed: () {},
                                                elevation: 1.0,
                                                fillColor: Colors.blue,
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                                shape: CircleBorder(),
                                                constraints: BoxConstraints(
                                                  minWidth: 10,
                                                  minHeight: 10,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Your Story",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black87),
                                    )
                                  ],
                                ),
                              ),
                              // PERSON STORY
                              Row(
                                children: List.generate(
                                  onlineUsers.length,
                                  (index) => Container(
                                    padding: EdgeInsets.all(2),
                                    child: Column(
                                      children: [
                                        InkResponse(
                                          splashColor: Colors.white38,
                                          radius: 45,
                                          onTap: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: 40,
                                            backgroundImage: AssetImage(
                                              "images/story1.png",
                                            ),
                                            child: CircleAvatar(
                                                radius: 31,
                                                child: ClipOval(
                                                  child: Image.network(
                                                    onlineUsers[index].imageUrl,
                                                    width:
                                                        65, // Lebar dan tinggi harus sama untuk membuatnya menjadi lingkaran
                                                    height: 65,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          onlineUsers[index].name,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black87),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // POST
                        Divider(),
                        Column(
                          children: List.generate(
                            posts.length,
                            (index) => Column(
                              children: [
                                // headerpost
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: InkResponse(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16,
                                          backgroundImage: AssetImage(
                                            "images/story1.png",
                                          ),
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: CircleAvatar(
                                                radius: 29,
                                                child: ClipOval(
                                                  child: Image.network(
                                                    onlineUsers[index].imageUrl,
                                                    width:
                                                        58, // Lebar dan tinggi harus sama untuk membuatnya menjadi lingkaran
                                                    height: 58,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      onlineUsers[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onDoubleTap: () {
                                    setState(() {
                                      if (postsButton[index].isLiked) {
                                        postsButton[index].isLiked = false;
                                      } else {
                                        postsButton[index].isLiked = true;
                                      }

                                      if (!postsButton[index].isLiked) {
                                        postsButton[index].isLiked =
                                            postsButton[index].originalLiked;
                                      }
                                    });
                                    _toggleLike();
                                  },
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          postImages[index],
                                        ),
                                        AnimatedOpacity(
                                          duration: Duration(milliseconds: 300),
                                          opacity: _isLikeds ? 1.0 : 0.0,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                            size: 100,
                                          ),
                                        ),
                                      ]),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(
                                          postsButton[index].isLiked
                                              ? Icons.favorite
                                              : Icons.favorite_border_sharp,
                                          color: postsButton[index].isLiked
                                              ? Colors.red
                                              : Colors.black,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (postsButton[index].isLiked) {
                                              postsButton[index].isLiked =
                                                  false;
                                            } else {
                                              postsButton[index].isLiked = true;
                                            }

                                            if (!postsButton[index].isLiked) {
                                              postsButton[index].isLiked =
                                                  postsButton[index]
                                                      .originalLiked;
                                            }
                                          });
                                        }),
                                    IconCostum(
                                      imagePath: 'images/coment.png',
                                      width: 20,
                                      height: 20,
                                      colors: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconCostum(
                                      imagePath: 'images/share.png',
                                      width: 20,
                                      height: 20,
                                      colors: Colors.black,
                                    ),
                                    Spacer(),
                                    IconButton(
                                        icon: Icon(
                                          postsButton[index].isSaved
                                              ? Icons.bookmark
                                              : Icons.bookmark_border_sharp,
                                          color: postsButton[index].isSaved
                                              ? Colors.black
                                              : Colors.black,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (postsButton[index].isSaved) {
                                              postsButton[index].isSaved =
                                                  false;
                                            } else {
                                              postsButton[index].isSaved = true;
                                            }

                                            if (!postsButton[index].isSaved) {
                                              postsButton[index].isSaved =
                                                  postsButton[index]
                                                      .originalSaved;
                                            }
                                          });
                                        }),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text:
                                                  posts[index].likes.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: ' Likes',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      // COMMENT
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text: onlineUsers[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: SizedBox(
                                                width: 7,
                                              ),
                                            ),
                                            TextSpan(text: posts[index].caption)
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'View all ${posts[index].comments} comments',
                                        style: TextStyle(color: Colors.black45),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
