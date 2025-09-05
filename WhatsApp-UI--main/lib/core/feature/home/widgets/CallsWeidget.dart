import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/callsModel.dart';

class Callsweidget extends StatelessWidget {
  const Callsweidget({super.key, required this.model});

  @override
  final callModel model;
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(model.image3),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text(model.name3 , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold ,color: model.textColor),),
                      Row(
                        children: [
                          Icon( model.icon ,color: model.color, size: 20,),
                          SizedBox(width: 15,),
                          Text(model.time3, style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w300),),
                        ],
                      )

                    ],
                  ),
                  SizedBox(width: 100,),
                  Icon(model.iconData)


                ],
              ),

            ],

          ),
        ),

      ),
    )
    ;
  }
}
