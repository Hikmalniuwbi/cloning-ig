import 'package:flutter/material.dart';

class IconCostum extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final Color colors;
  const IconCostum(
      {super.key,
      required this.imagePath,
      required this.width,
      required this.height,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      color: colors,
    );
  }
}
