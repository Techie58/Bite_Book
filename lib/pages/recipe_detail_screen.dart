import 'package:bite_book/designs/recipeDetail/favourite_btn.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
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
  final PanelController panelController;

  const RecipeDetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.recipeDetailNutritionGridList,
    required this.ingredients,
    required this.instructions,
    required this.relatedRecipes,
    required this.panelController,
  });

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool showIngredients = true;
  bool isPanelOpened = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SlidingUpPanel(
            controller: widget.panelController,
            maxHeight: screenHeight * 0.8,
            minHeight: screenHeight * 0.3,
            parallaxEnabled: true,
            parallaxOffset: .5,
            onPanelOpened: () {
              setState(() {
                isPanelOpened = true;
              });
            },
            onPanelClosed: () {
              setState(() {
                isPanelOpened = false;
              });
            },

            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            body: SizedBox(
              height: screenHeight * 0.2,
              width: double.infinity,
              child: Image.asset(widget.image, fit: BoxFit.cover),
            ),
            panelBuilder: (controller) => RecipeDetailPanel(
              panelController: widget.panelController,
              title: widget.title,
              subTitle: widget.subtitle,
              ingredients: widget.ingredients,
              instructions: widget.instructions,
              recipeDetailNutritionGridList:
                  widget.recipeDetailNutritionGridList,
              relatedRecipes: widget.relatedRecipes,
              controller: controller,
              isPanelOpen: isPanelOpened,
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){Navigator.of(context).pop();},
                    child: FavouriteBtn(
                      hugeIcon: HugeIcons.strokeRoundedCancel01,
                      containerSize: screenWidth * 0.10,
                      iconSize: screenWidth * 0.07,
                    ),
                  ),
                  FavouriteBtn(
                    hugeIcon: HugeIcons.strokeRoundedFavourite,
                    containerSize: screenWidth * 0.10,
                    iconSize: screenWidth * 0.07,
                    containerColor: Colors.white,

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
