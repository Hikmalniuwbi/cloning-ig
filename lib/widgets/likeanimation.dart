// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Likeanimation extends StatefulWidget {
  final Widget child;
  bool isAnimate;
  final Duration duration;

  Likeanimation(
      {super.key,
      required this.child,
      required this.isAnimate,
      required this.duration});

  @override
  State<Likeanimation> createState() => _LikeanimationState();
}

class _LikeanimationState extends State<Likeanimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;
  @override
  void initState() {
    super.initState();
    final halfDuration = widget.duration.inMilliseconds ~/ 2;
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: halfDuration),
    );
    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
  }

  @override
  void didUpdateWidget(covariant Likeanimation oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimate != oldWidget.isAnimate) {
      doAnimation();
    }
  }

  Future doAnimation() async {
    await controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: scale,
        child: widget.child,
      );
}
