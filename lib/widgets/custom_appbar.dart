import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  final Widget child;
  const CustomAppBar({this.height, this.child});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: preferredSize.height,
    );
  }
}
