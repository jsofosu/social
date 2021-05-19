import 'package:flutter/material.dart';
import '../models/data.dart';
import '../widgets/textwidget.dart';

class Details extends StatefulWidget {
  final Data col;
  Details(this.col);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.col.image),
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
          title: Text('Spring Collection'),
          actions: [
            IconButton(
              icon: Icon(Icons.upload_rounded),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 10, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Circles(
                    widget: widget,
                    number: 1,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 40,
                ),
                color: Colors.black54,
                width: 200,
                height: 4,
              ),
              SizedBox(height: 30),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circles(
                      widget: widget,
                      number: 2,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/red.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 29,
                            color: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          '98.1K',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Texxt(
                text: 'Leslie Alexander',
                size: 21,
                color: Colors.white,
                weight: FontWeight.w500,
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texxt(
                      text:
                          'Monte Carlo brand was launched  \n in 1984 by Oswen Mills',
                      color: Colors.grey[100],
                      weight: FontWeight.w300,
                      size: 17,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Texxt(
                            text: '198.1k',
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texxt(
                    text: '#montecarlo',
                    color: Colors.white54,
                    size: 15,
                  ),
                  Texxt(
                    text: '#montecarlo',
                    color: Colors.white54,
                    size: 15,
                  ),
                  Texxt(
                    text: '#montecarlo',
                    color: Colors.white54,
                    size: 15,
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class Circles extends StatelessWidget {
  final Details widget;
  final int number;
  Circles({
    @required this.widget,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
      height: 54,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8,
          // vertical: 20,
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.col.colour,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 6,
            // vertical: 20,
          ),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(number.toString()),
          ),
        ),
      ),
    );
  }
}
