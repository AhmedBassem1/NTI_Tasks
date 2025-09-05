import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/widgets/CallsWeidget.dart';

import '../model/callsModel.dart';

class Callsscreen extends StatelessWidget {
  const Callsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => debugPrint("Add Pressed"),
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call , color: Colors.black,),
      
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Calls",
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
      body: ListView.builder(
        itemCount: callModel.calls.length,
        itemBuilder: (context, index) {
          return Callsweidget(model: callModel.calls[index]);
        },
      ),


    );
  }
}
