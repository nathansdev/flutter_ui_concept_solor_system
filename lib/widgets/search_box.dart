import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool enable;
  SearchBox({this.controller, this.hint, this.enable});

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          color: god_gray,
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: TextField(
        enabled: widget.enable,
        controller: widget.controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(color: white_65),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            fillColor: god_gray,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)))),
      ),
    );
  }
}
