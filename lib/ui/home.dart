import 'package:flutter/material.dart';
import 'profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: Profile(),
    );
  }
}
