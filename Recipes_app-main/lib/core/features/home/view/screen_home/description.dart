import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../text_style.dart';
import '../../recipes/model/recipes_model.dart';
import '../widgets/description_widget.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.recipes});

  final RecipesModel recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFE0B2),
                  Color(0xFFFFCC80),
                ],
              ),
            ),
          ),

          Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon:  Icon(Icons.arrow_back_ios, color: Colors.black, size: 35),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Text(
                    recipes.name,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                 SizedBox(width: 48),
              ],
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 100, left: 15, right: 15),
            child: Card(
              color: Colors.transparent,
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color:  Color(0xFFFFE0B2), width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(recipes.image),
                        ),
                        Text(recipes.name, style: textStyle.copyWith(fontSize: 25)),
                         SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < recipes.rating.round()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Color(0xFFFFCC80),
                              size: 22,
                            );
                          }),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(10),
                          child: Row(
                            children: [
                               Icon(Icons.timer, size: 20, color: Colors.black),
                               SizedBox(width: 5),
                              Text("${recipes.prepTimeMinutes} Prep Time",
                                  style: textStyle.copyWith(fontSize: 15)),
                               SizedBox(width: 15),
                               Icon(Icons.timer, size: 20, color: Colors.black),
                               SizedBox(width: 5),
                              Text("${recipes.cookTimeMinutes} Cook Time",
                                  style: textStyle.copyWith(fontSize: 15)),
                            ],
                          ),
                        ),
                         SizedBox(height: 10),
                        DescriptionWidget(recipes: recipes),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
