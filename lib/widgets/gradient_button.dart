import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  final String text;
  final Gradient gradient;
  final VoidCallback onTap;

  GradientButton({this.gradient, this.onTap, this.text});

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 24,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
    );
  }
}
