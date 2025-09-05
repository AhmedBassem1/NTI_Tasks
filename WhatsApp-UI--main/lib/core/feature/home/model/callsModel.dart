import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class callModel {
  final String name3;
  final String time3;
  final String image3;
  final IconData icon;
  final IconData iconData;
  final Color color;
  final Color textColor;

  callModel({
    required this.name3,
    required this.time3,
    required this.image3,
    required this.icon,
    required this.iconData,
    required this.color,
    required this.textColor,
  });

  static List<callModel> calls = [
    callModel(
      name3: "Mohamed",
      time3: "3:35 AM",
      image3: "assets/images/img_4.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Ahmed",
      time3: "5:42 PM",
      image3: "assets/images/img_2.png",
      icon: Icons.south_west,
      iconData: Icons.video_call,
      color: Colors.red,
      textColor: Colors.red,
    ),
    callModel(
      name3: "Flutter 4",
      time3: "8:20 PM",
      image3: "assets/images/img_3.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Amir",
      time3: "9:10 PM",
      image3: "assets/images/img.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Mamdouh",
      time3: "12:35 PM",
      image3: "assets/images/img_4.png",
      icon: Icons.south_west,
      iconData: Icons.video_call,
      color: Colors.red,
      textColor: Colors.red,
    ),
    callModel(
      name3: "Mohamed",
      time3: "3:35 AM",
      image3: "assets/images/img_4.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Ahmed",
      time3: "5:42 PM",
      image3: "assets/images/img_2.png",
      icon: Icons.south_west,
      iconData: Icons.video_call,
      color: Colors.red,
      textColor: Colors.red,
    ),
    callModel(
      name3: "Flutter 4",
      time3: "8:20 PM",
      image3: "assets/images/img_3.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Amir",
      time3: "9:10 PM",
      image3: "assets/images/img.png",
      icon: Icons.north_east_outlined,
      iconData: Icons.call,
      color: Colors.green,
      textColor: Colors.black,
    ),
    callModel(
      name3: "Mamdouh",
      time3: "12:35 PM",
      image3: "assets/images/img_4.png",
      icon: Icons.south_west,
      iconData: Icons.video_call,
      color: Colors.red,
      textColor: Colors.red,
    ),
  ];
}
