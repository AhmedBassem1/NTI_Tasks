part of 'recipes_cubit.dart';

@immutable
sealed class RecipesState {}

final class RecipesInitial extends RecipesState {}
final class RecipesSuccessState extends RecipesState {

  final List<RecipesModel> recipes;

  RecipesSuccessState({required this.recipes});


}
