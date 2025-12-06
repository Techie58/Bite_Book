import 'package:bite_book/designs/recipeDetail/ingredientCardDesign.dart';
import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class IngredientsList extends StatelessWidget {
  final RecipeDetailModel recipeDetailModel;
  const IngredientsList({super.key, required this.recipeDetailModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: IngredientCardDesign(
          ingredientImage: recipeDetailModel.image,
          ingredientName: recipeDetailModel.ingredients[index],
          ingredientAmount: recipeDetailModel.ingredientAmount[index],
          chekBox: false,
        ),
      ),
    );
  }
}

class InstructionsList extends StatelessWidget {
  final RecipeDetailModel recipeDetailModel;
  const InstructionsList({super.key, required this.recipeDetailModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text(recipeDetailModel.instructions[index]);
      },
    );
  }
}
