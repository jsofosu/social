import 'package:flutter/material.dart';
import './tabs/about.dart';
import './tabs/photos.dart';
import '../settings.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.black54,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(29),
                      image: DecorationImage(
                          image: AssetImage('images/mann.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    'Harry Jasin',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Clothing Influencer',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade700,
                      height: 0.8,
                      //  letterSpacing: 0.1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 30, 15),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Likes('30K', 'Product likes'),
                        Likes('2.1K', 'Product Sold'),
                        Likes('3500', 'Followers'),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 210,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent),
                        ),
                        Icoons(Icons.mail_outlined),
                        Icoons(Icons.more_vert),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.label,
                      //indicatorWeight: 5,
                      tabs: [
                        Tab(
                          child: Text('About'),
                        ),
                        Tab(
                          child: Text('Photos'),
                        ),
                        Tab(
                          child: Text('Collection'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height) / 4 + 180,
                    child: TabBarView(
                      children: [
                        AboutTab(),
                        Photos(),
                        Icon(Icons.ac_unit),
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class Icoons extends StatelessWidget {
  final IconData icon;
  Icoons(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 55,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: IconButton(icon: Icon(icon), onPressed: () {}));
  }
}

class Likes extends StatelessWidget {
  final String number;
  final String category;
  Likes(this.number, this.category);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Text(category),
      ],
    );
  }
}
