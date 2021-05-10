import 'package:flutter/material.dart';
import 'profile/profile.dart';
import '../widgets/bottomnavigation.dart';

class Home extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xfff9f9f9),
      body: Profile(),
      bottomNavigationBar: Bottom(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
