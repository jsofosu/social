import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      margin: EdgeInsets.fromLTRB(35, 25, 25, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'A fashion influencer is a personality that has a large number of followers on social media, creates mainly fashion content and has the power to influence the opinion',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.8,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Collaborations',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      height: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '200 active clients',
              style:
                  TextStyle(color: Colors.black87, fontSize: 14, height: 1.0),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Brand('images/log1.jpg'),
                    SizedBox(width: 15),
                    Brand('images/log2.jpg'),
                    SizedBox(width: 15),
                    Brand('images/log3.jpg'),
                    SizedBox(width: 15),
                    Brand('images/log4.png'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Brand extends StatelessWidget {
  final String image;
  const Brand(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
