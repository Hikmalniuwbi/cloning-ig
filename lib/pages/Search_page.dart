import 'package:clone_ig/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      await Future.delayed(Duration(seconds: 2));
    }

    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      body: RefreshIndicator(
        color: Colors.grey,
        onRefresh: onRefresh,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
                elevation: 1,
                pinned: false,
                snap: true,
                floating: true,
                flexibleSpace: const FlexibleSpaceBar(),
                title: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Searchpage()));
                  },
                  child: CupertinoSearchTextField(
                    backgroundColor: Colors.black12,
                    controller: _searchController,
                    itemColor: Colors.black,
                  ),
                )),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Image.network(
                      onlineUsers[index].imageUrl,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                childCount: onlineUsers.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
