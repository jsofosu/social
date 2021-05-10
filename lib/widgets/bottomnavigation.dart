import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
