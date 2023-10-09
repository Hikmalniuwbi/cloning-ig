import 'package:flutter/material.dart';

class ExpendableTextCostum extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle textStyle;
  const ExpendableTextCostum({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.textStyle = const TextStyle(),
  });

  @override
  State<ExpendableTextCostum> createState() => _ExpendableTextCostumState();
}

class _ExpendableTextCostumState extends State<ExpendableTextCostum> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      widget.text,
      style: widget.textStyle,
      maxLines: isExpanded ? null : widget.maxLines,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Text(
            isExpanded ? '...' : '...',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
