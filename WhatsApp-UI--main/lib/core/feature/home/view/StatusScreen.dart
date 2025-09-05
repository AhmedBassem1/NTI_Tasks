import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/widgets/HomeWeidet.dart';
import 'package:untitled2/core/feature/home/widgets/StatusWeidet.dart';

import '../model/StatusModel.dart';

class Statusscreen extends StatefulWidget {
  const Statusscreen({super.key});

  @override
  State<Statusscreen> createState() => _StatusscreenState();
}

class _StatusscreenState extends State<Statusscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => debugPrint("Add Pressed"),
        backgroundColor: Colors.green,
        child: Icon(Icons.add_a_photo ,color: Colors.black,),
      
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Updates",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.search_rounded, size: 30, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.more_vert, size: 30, color: Colors.white),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/image.jpg",
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(2),
                                child: const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              "Add Status",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Disappears after 24 hours",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: StatusModel.status.length,
                itemBuilder: (context, index) {
                  return Statusweidet(model: StatusModel.status[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
