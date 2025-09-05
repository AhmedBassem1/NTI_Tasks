import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipes/core/features/home/recipes/model/recipes_data.dart';

import '../model/recipes_model.dart';

part 'recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  RecipesCubit() : super(RecipesInitial());

  RecipesData recipesData = RecipesData();

  getDataCubit()async {
    emit(RecipesSuccessState(recipes: await recipesData.getDataRecipes()));
  }
}
