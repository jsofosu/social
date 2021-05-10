import 'package:flutter/material.dart';
import '../widgets/bottomnavigation.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(29),
                image: DecorationImage(
                    image: AssetImage('images/mann.jpg'), fit: BoxFit.cover),
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
              'harryjason09@gmail.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                // height: 0.,
                //letterSpacing: 0,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 15,
              ),
              width: 130,
              height: 40,
              child: Center(
                child: Texxt(
                  text: 'Edit Profile',
                  color: Colors.white,
                  size: 16,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texxt(
                      text: 'Content',
                      size: 22,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(height: 10),
                    SettingsCard(
                      leadicon: Icons.favorite_outline,
                      text: 'Favorites',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SettingsCard(
                      leadicon: Icons.file_download,
                      text: 'Downloads',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SizedBox(height: 18),
                    Texxt(
                      text: 'Account Settings',
                      size: 22,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(height: 10),
                    SettingsCard(
                      leadicon: Icons.favorite_outline,
                      text: 'Language',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SettingsCard(
                      leadicon: Icons.notifications_outlined,
                      text: 'Notification',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SettingsCard(
                      leadicon: Icons.lock_outline,
                      text: 'Security',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SettingsCard(
                      leadicon: Icons.info_outline,
                      text: 'Additional Information',
                      lasticon: Icons.arrow_forward_ios,
                    ),
                    SettingsCard(
                      leadicon: Icons.logout,
                      text: 'Log out',
                    ),
                  ],
                ))
          ],
        )),
      ),
      bottomNavigationBar: Bottom(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class SettingsCard extends StatelessWidget {
  final IconData leadicon;
  final String text;
  final IconData lasticon;
  SettingsCard({this.leadicon, this.text, this.lasticon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  leadicon,
                  color: Colors.grey,
                  size: 28,
                ),
                SizedBox(width: 15),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Icon(
            lasticon,
            color: Colors.grey,
            //size: 28,
          ),
        ],
      ),
    );
  }
}

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
