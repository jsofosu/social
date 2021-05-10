import 'package:flutter/material.dart';
import '../models/data.dart';

class Details extends StatelessWidget {
  final Data col;
  Details(this.col);
  @override
  Widget build(BuildContext context) {
    return
        // Stack(
        //   children: [
        //     Container(
        //       height: double.infinity,
        //       width: double.infinity,
        //       // decoration: BoxDecoration(
        //       //   image: DecorationImage(
        //       //     fit: BoxFit.contain,
        //       //     image: AssetImage(
        //       //       col.image,
        //       //     ),
        //       //   ),
        //       // ),
        //       child: Image.asset(
        //         col.image,
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ],
        // );
        Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(col.image),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
