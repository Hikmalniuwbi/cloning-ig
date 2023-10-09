import 'package:clone_ig/data/data.dart';
import 'package:clone_ig/widgets/reel_detail_bar.dart';
import 'package:clone_ig/widgets/reels_side_bar.dart';
import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage>
    with SingleTickerProviderStateMixin {
  bool _isLiked = false;
  late AnimationController _likeAnimationController;

  @override
  void initState() {
    super.initState();
    _likeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // Sesuaikan durasi animasi
    );
  }

  void _toggleLike() {
    setState(() {
      _isLiked = true;
    });

    _likeAnimationController.forward().then((_) {
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          _isLiked = false;
        });
        _likeAnimationController.reset();
      });
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Reels',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.grey,
        onRefresh: onRefresh,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onDoubleTap: () {
                _toggleLike();
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                    image: NetworkImage(posts[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            begin: Alignment(0, -0.75),
                            end: Alignment(0, 0.1),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            end: Alignment(0, -0.75),
                            begin: Alignment(0, 0.1),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(flex: 14, child: Reelsdetail()),
                              Flexible(flex: 2, child: ReelSideBar())
                            ],
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ScaleTransition(
                          scale: Tween(begin: 0.8, end: 1.2)
                              .animate(_likeAnimationController),
                          child: AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                            opacity: _isLiked ? 1.0 : 0.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 100,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
