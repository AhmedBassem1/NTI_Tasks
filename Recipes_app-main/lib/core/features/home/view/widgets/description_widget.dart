import 'package:flutter/cupertino.dart';

import '../../../../text_style.dart';
import '../../recipes/model/recipes_model.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.recipes});

  final RecipesModel recipes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Ingredients:",
            style: textStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              recipes.ingredients.length,
              (index) => Text(
                "- ${recipes.ingredients[index]}",
                style: textStyle.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Instructions:",
            style: textStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              recipes.instructions.length,
              (index) => Text(
                "- ${recipes.instructions[index]}",
                style: textStyle.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
