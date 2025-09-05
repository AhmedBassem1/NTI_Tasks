import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/view/CallsScreen.dart';
import 'package:untitled2/core/feature/home/view/HomeScreen.dart';
import 'package:untitled2/core/feature/home/view/StatusScreen.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int currentIndex = 0;
  final List <Widget> pages = [
    Homescreen(),
    Statusscreen(),
    Callsscreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex ,
        onTap: (value){
          currentIndex = value;
          print(currentIndex);
          setState(() {

          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "update"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
        ],
      ),

    );
  }
}


