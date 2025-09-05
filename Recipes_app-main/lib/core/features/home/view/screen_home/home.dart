import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes/core/features/home/recipes/cubit/recipes_cubit.dart';
import 'package:recipes/core/features/home/view/widgets/loading_widget.dart';
import 'package:recipes/core/features/home/view/widgets/success_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RecipesCubit, RecipesState>(
        builder: (context, state) {
          if (state is RecipesSuccessState) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFFE0B2),
                    Color(0xFFFFCC80),
                  ],
                ),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.6,
                ),
                itemCount: state.recipes.length,
                itemBuilder: (context, index) {
                  return SuccessWidget(recipes: state.recipes[index]);
                },
              ),
            );
          }
          return LoadingWidget() ;
        },
      ),
    );
  }
}
