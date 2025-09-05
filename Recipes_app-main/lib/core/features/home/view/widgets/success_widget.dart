import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/core/text_style.dart';

import '../../recipes/model/recipes_model.dart';
import '../screen_home/description.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.recipes});

  final RecipesModel recipes;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder:(context) => Description(recipes: recipes,),),
        );

      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: Colors.transparent,
          elevation: 20,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFFFE0B2), width: 5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(recipes.image, fit: BoxFit.cover),
                  SizedBox(height: 10,),
                  Text(recipes.name , style: textStyle,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.timer ,size: 15, color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("${recipes.prepTimeMinutes.toString()} Prep Time" , style: textStyle,),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
