import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'nutritionGridModel.dart';

class RecipeDetailModel {
  final String image;
  final String title;
  final String subtitle;
  final List<String> ingredientAmount;
  final List<String> ingredients;
  final List<String> instructions;
  final List<NutritionGridModel> nutritionGridList;
  final List<Map<String, String>> relatedRecipes;
  final PanelController panelController;

  RecipeDetailModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.ingredientAmount,
    required this.ingredients,
    required this.instructions,
    required this.nutritionGridList,
    required this.relatedRecipes,
    required this.panelController,
  });
}
