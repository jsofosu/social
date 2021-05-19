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
            BottomTabs(
              bottomicon: Icons.book,
              iconname: 'Feed',
              colour: Colors.grey,
            ),
            BottomTabs(
              bottomicon: Icons.search,
              iconname: 'Search',
              colour: Colors.grey,
            ),
            SizedBox(width: 10),
            BottomTabs(
              bottomicon: Icons.shopping_cart,
              iconname: 'Cart',
              colour: Colors.grey,
            ),
            BottomTabs(
              bottomicon: Icons.account_circle_sharp,
              iconname: 'Profile',
              colour: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomTabs extends StatefulWidget {
  final IconData bottomicon;
  final String iconname;
  final Color colour;

  BottomTabs({this.bottomicon, this.iconname, this.colour});
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
          color: widget.colour,
        ),
        Text(
          widget.iconname,
          style: TextStyle(
            fontSize: 14,
            color: widget.colour,
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
