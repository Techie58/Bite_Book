import 'package:bite_book/designs/recipeDetail/favourite_btn.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../models/nutritionGridModel.dart';
import '../widgets/recipeDetailWidgets/recipe_detail_panel.dart';

class RecipeDetailScreen extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final List<NutritionGridModel> recipeDetailNutritionGridList;
  final List<String> ingredients;
  final List<String> instructions;
  final List<Map<String, String>> relatedRecipes;

  const RecipeDetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.recipeDetailNutritionGridList,
    required this.ingredients,
    required this.instructions,
    required this.relatedRecipes,
  });

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool showIngredients = true;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: screenHeight * 0.8,
        minHeight: screenHeight * 0.2,
        parallaxEnabled: true,
        parallaxOffset: .5,

        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        body: SizedBox(
          height: screenHeight * 0.2,
          width: double.infinity,
          // width: double.infinity,height: screenHeight - (screenHeight * 0.8),
          child: Image.asset(widget.image, fit: BoxFit.cover,),
        ),
        panelBuilder: (controller) => RecipeDetailPanel(
          title: widget.title,
          subTitle: widget.subtitle,
          ingredients: widget.ingredients,
          instructions: widget.instructions,
          recipeDetailNutritionGridList: widget.recipeDetailNutritionGridList,
          relatedRecipes: widget.relatedRecipes,
          controller: controller,
        ),
      ),
    );
  }
}
