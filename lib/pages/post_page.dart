import 'package:clone_ig/data/data1.dart';
import 'package:clone_ig/widgets/addpost_appbar.dart';
import 'package:clone_ig/widgets/btn_selectmultiple.dart';
import 'package:clone_ig/widgets/dropdown_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Postpage extends StatefulWidget {
  const Postpage({super.key});

  @override
  State<Postpage> createState() => _PostpageState();
}

class _PostpageState extends State<Postpage> {
  String selectedImage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AddpostAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              SliverToBoxAdapter(
                  child: Container(
                child: selectedImage.isNotEmpty
                    ? Image.asset(
                        selectedImage,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        "images/post_1.jpg",
                      ),
              )),
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                title: RecentDropBtn(),
                actions: [
                  SelectMultiBtn(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.grey.shade600,
                            shape: CircleBorder()),
                        onPressed: () {},
                        child: Icon(
                          CupertinoIcons.camera,
                          size: 18,
                        )),
                  )
                ],
              ),
            ];
          },
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: postImages.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImage = postImages[index];
                  });
                },
                child: Image.asset(
                  postImages[index],
                  fit: BoxFit.cover,
                ),
              ));
            },
          ),
        ));
  }
}
