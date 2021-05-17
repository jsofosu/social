import 'package:flutter/material.dart';

class Data {
  final String name;
  final String image;
  final Color colour;
  Data({this.name, this.image, this.colour});
}

class Info with ChangeNotifier {
  List<Data> collection = [
    Data(
      name: 'Blazer',
      image: 'images/sweater.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/gym.jpeg',
      colour: Color(0xff0063ee),
    ),
    Data(
      name: 'Blazer',
      image: 'images/6 2.jpeg',
      colour: Color(0xffcea400),
    ),
    Data(
      name: 'Blazer',
      image: 'images/11.jpeg',
      colour: Color(0xffedadc8),
    ),
    Data(
      name: 'Blazer',
      image: 'images/1.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/sweat.jpeg',
      colour: Colors.grey,
    ),
    Data(
      name: 'Blazer',
      image: 'images/man1 2.jpeg',
      colour: Color(0xff0275b8),
    ),
    Data(
      name: 'Blazer',
      image: 'images/7.jpeg',
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
