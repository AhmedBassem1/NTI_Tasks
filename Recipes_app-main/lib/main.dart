import 'package:flutter/cupertino.dart';
import 'package:recipes/core/features/home/recipes/model/recipes_data.dart';
import 'package:recipes/my_app.dart';

void main(){

  RecipesData recipesData = RecipesData();
  recipesData.getDataRecipes();

  runApp(MyApp());

}