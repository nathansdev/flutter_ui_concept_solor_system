import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final int maxLines;
  const CustomText({this.text, this.color, this.size, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style:
          TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: size),
    );
  }
}
