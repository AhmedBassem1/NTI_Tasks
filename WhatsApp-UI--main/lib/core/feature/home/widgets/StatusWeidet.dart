import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/widgets/HomeWeidet.dart';

import '../model/StatusModel.dart';

class Statusweidet extends StatelessWidget {
  const Statusweidet({super.key, required this.model});

  @override
  final StatusModel model;

  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 3),
                  ),
                  child:  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(model.image2),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text(model.name2 , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
                    Text(model.time2 , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w300),)

                  ],
                )


              ],
            ),

          ],

        ),
      ),

    );

  }
}
