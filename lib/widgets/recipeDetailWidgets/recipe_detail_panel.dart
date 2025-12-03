import 'package:bite_book/widgets/recipeDetailWidgets/ExpandableText.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/NutritionGrid.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/toggIngredientOrInstruction.dart';
import 'package:bite_book/widgets/see_all_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/nutritionGridModel.dart';
import 'IngredientsOrInstructionList.dart';

class RecipeDetailPanel extends StatelessWidget {
  final ScrollController controller;
  final String title, subTitle;
  final List<NutritionGridModel> recipeDetailNutritionGridList;
  final List<String> ingredients;
  final List<String> instructions;
  final List<Map<String, String>> relatedRecipes;

  const RecipeDetailPanel({
    super.key,
    required this.controller,
    required this.title,
    required this.subTitle,
    required this.recipeDetailNutritionGridList,
    required this.ingredients,
    required this.instructions,
    required this.relatedRecipes,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,

      slivers: [
        //-------------------Drag handle
        SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),

        //Title
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //-------------------SubTitle
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ExpandableText(text: subTitle),
          ),
        ),

        //-----------------------Nutrition Grid--------------
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: NutritionGrid(recipeDetailNutritionGridList: recipeDetailNutritionGridList,),
          ),
        ),

        //--------------------------------Ingredient / Instruction Toggle

        SliverToBoxAdapter(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ToggleIngredientOrInstruction(onToggle: (value){},),
        )),

        //----------------------Ingredient Tile----------------------
        SliverToBoxAdapter(child: SeeAllTile(tileName: 'Ingredient',seeAll: 'Add All TO Cart',)),

        //-------------------------Ingredient / Instruction List (With Ingredient Add to Cart option
        
        
        SliverToBoxAdapter(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IngredientsList(ingredients: ingredients),
        ),)
        
        // SliverList(
        //   delegate: SliverChildBuilderDelegate((context, index) {
        //     return IngredientsList(ingredients: ingredients);
        //   }, childCount: ingredients.length),
        // ),

        // -----------------------Related Recipes---------------------
      ],
    );
  }
}
