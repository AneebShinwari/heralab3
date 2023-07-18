import 'package:flutter/material.dart';

class MyModel{
  String? name;
  String? image;
  Color? color;
 MyModel({required this.image, required this.name , required this.color}) ;
}//list
final modleList=[
  MyModel(image: 'assets/img.png', name: 'Pic',color: Colors.orange ),
  MyModel(image: 'assets/img_1.png', name: 'Profile',color: Colors.yellow),
  MyModel(image: 'assets/img_2.png', name: 'Cartoon',color: Colors.purpleAccent),
  MyModel(image: 'assets/img_3.png', name: 'Emoji',color: Color(0xfff03b90)),
  MyModel(image: 'assets/img_4.png', name: 'Dog',color: Color(0xfff03b10)),

];