import 'package:flutter/material.dart';

class Data {
  final String name;
  final String image;
  final Color colour;
  Data({this.name, this.image, this.colour});
}

class Info with ChangeNotifier {
  List<Data> collection = [
    Data(name: 'Blazer', image: 'images/7.jpeg', colour: Colors.grey),
    Data(name: 'Blazer', image: 'images/man1.jpeg', colour: Colors.blue),
    Data(
      name: 'Blazer',
      image: 'images/y.jpeg',
      colour: Colors.yellow,
    ),
    Data(name: 'Blazer', image: 'images/11.jpeg', colour: Colors.pinkAccent),
    Data(
      name: 'Blazer',
      image: 'images/1.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/man.jpg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/4.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/9.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/8.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/3.jpeg',
      colour: Colors.grey,
    ),
  ];
}
