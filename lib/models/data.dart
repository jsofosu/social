import 'package:flutter/material.dart';

class Data {
  final String name;
  final String image;
  Data({this.name, this.image});
}

class Info with ChangeNotifier {
  List<Data> collection = [
    Data(
      name: 'Blazer',
      image: 'images/7.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/man1.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/y.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/11.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/1.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/man.jpg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/4.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/9.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/8.jpeg',
    ),
    Data(
      name: 'Blazer',
      image: 'images/3.jpeg',
    ),
  ];
}
