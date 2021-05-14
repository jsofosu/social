import 'package:flutter/material.dart';

class Texxt extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;
  final FontWeight weight;

  Texxt({this.text, this.color, this.size, this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
    );
  }
}
