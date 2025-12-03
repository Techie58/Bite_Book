import 'package:bite_book/designs/recipeDetail/ingredientCardDesign.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class IngredientsList extends StatelessWidget {
  final List<String> ingredients;
  const IngredientsList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: IngredientCardDesign(ingredientImage: bannersPicsList[index],
            ingredientName: recipesNamesList[index], ingredientAmount: recipesNamesList[index], chekBox: false,)
      ),
    );
  }
}

class InstructionsList extends StatelessWidget {
  final List<String> instructions;
  const InstructionsList({super.key, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: instructions.length,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text('${index + 1}. ${instructions[index]}'),
      ),
    );
  }
}
