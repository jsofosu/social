import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/models/data.dart';
import 'package:social/ui/detail.dart';

class Photos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final collist = Provider.of<Info>(context).collection;
    return Container(
      margin: EdgeInsets.fromLTRB(35, 35, 35, 0),
      child: Column(
        children: [
          SizedBox(height: 5),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.75,
              ),
              itemCount: collist.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            collist[i],
                          ),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          // alignment: Alignment.bottomLeft,
                          image: AssetImage(
                            collist[i].image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
