import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/homeModel.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key, required this.model});

  @override
  final HomeModel model;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(model.name ,style: TextStyle(fontSize: 25 , color: Colors.white , fontWeight: FontWeight.bold),),
        
        actions: [
          Icon(Icons.call , size: 30, color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.video_call , size: 30, color: Colors.white,)
        ],
      ),
    );
  }
}

