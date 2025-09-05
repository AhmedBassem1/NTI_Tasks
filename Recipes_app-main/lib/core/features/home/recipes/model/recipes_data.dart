

import 'package:dio/dio.dart';
import 'package:recipes/core/features/home/recipes/model/recipes_model.dart';

class RecipesData{

  final Dio dio = Dio();

 Future<List<RecipesModel>> getDataRecipes() async {
    var response = await dio.get("https://dummyjson.com/recipes");

    List data = response.data['recipes'];
    print(data);

    List <RecipesModel> recipes = data.map((e) => RecipesModel.fromJson(e)).toList();
    print(recipes[0].image);
    return recipes;

  }
}