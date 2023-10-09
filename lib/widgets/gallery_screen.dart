import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 3,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        children: <Widget>[],
      ),
    );
  }
}
