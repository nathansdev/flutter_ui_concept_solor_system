import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  SearchBox({this.controller, this.hint});

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(color: Colors.white),
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
