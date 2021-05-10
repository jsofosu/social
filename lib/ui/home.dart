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
      extendBody: true,
      backgroundColor: Color(0xfff9f9f9),
      body: Profile(),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        shape: CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomTabs(Icons.book, 'Feed'),
              BottomTabs(Icons.search, 'Search'),
              SizedBox(width: 10),
              BottomTabs(Icons.shopping_cart, 'Cart'),
              BottomTabs(Icons.account_circle_sharp, 'Profile'),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        // height: 70,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 5,
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.filter_center_focus),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BottomTabs extends StatefulWidget {
  final IconData bottomicon;
  final String iconname;

  BottomTabs(this.bottomicon, this.iconname);
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  bool touch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          widget.bottomicon,
          size: 23,
          color: touch ? Colors.yellow : Colors.grey,
        ),
        Text(
          widget.iconname,
          style: TextStyle(
            fontSize: 14,
            color: touch ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}
