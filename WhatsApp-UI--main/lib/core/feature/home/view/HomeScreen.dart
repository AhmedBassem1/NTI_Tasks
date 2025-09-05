import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/widgets/HomeWeidet.dart';
import 'package:flutter/src/widgets/image.dart';

import '../model/homeModel.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/image.jpg"),
              ),
              Text(
                "Mahmoud Elghamry",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Row(
                spacing: 15,
                children: [
                  Icon(Icons.settings, color: Colors.white, size: 25),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Add Pressed"),
        backgroundColor: Colors.green,
        child:Icon(Icons.add_comment_rounded ,color: Colors.black,),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Icon(Icons.nights_stay_outlined, size: 30, color: Colors.white),

          SizedBox(width: 15),
          Icon(Icons.camera_alt_outlined, size: 30, color: Colors.white),
        ],
        backgroundColor: Colors.green,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey, size: 30),
                      SizedBox(width: 15),
                      Text(
                        "Ask Meta Ai or Search",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: HomeModel.home.length,
                itemBuilder: (context, index) {
                  return Homeweidet(model: HomeModel.home[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
