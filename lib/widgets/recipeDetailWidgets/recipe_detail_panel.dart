import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/ExpandableText.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/NutritionGrid.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/toggIngredientOrInstruction.dart';
import 'package:bite_book/widgets/see_all_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../designs/recipeDetail/instruction_button.dart';
import 'IngredientsOrInstructionList.dart';

class RecipeDetailPanel extends StatefulWidget {
  final RecipeDetailModel recipeDetailModel;
  final ScrollController controller;

  final PanelController panelController;
  final bool isPanelOpen;

  const RecipeDetailPanel({
    super.key,
    required this.controller,
    required this.panelController,
    required this.isPanelOpen,
    required this.recipeDetailModel,
  });

  @override
  State<RecipeDetailPanel> createState() => _RecipeDetailPanelState();
}

class _RecipeDetailPanelState extends State<RecipeDetailPanel> {
  bool isIngredient = true;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: widget.controller,

      slivers: [
        //-------------------Drag handle
        SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: GestureDetector(
                onTap: onTogglePanelFun,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
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
              widget.recipeDetailModel.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //-------------------SubTitle-------------------
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ExpandableText(text: widget.recipeDetailModel.subtitle),
          ),
        ),

        //-----------------------Nutrition Grid--------------
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: NutritionGrid(
              recipeDetailNutritionGridList:
                  widget.recipeDetailModel.nutritionGridList,
            ),
          ),
        ),

        //-------------------------------- Toggle Ingredient / Instruction
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ToggleIngredientOrInstruction(
              onToggle: (value) {
                setState(() {
                  isIngredient = value;
                });
              },
              isIngredients: isIngredient,
            ),
          ),
        ),

        //----------------------Ingredient Tile----------------------
        SliverToBoxAdapter(
          child: SeeAllTile(
            tileName: isIngredient ? 'Ingredient' : 'Instructions ',
            seeAll: isIngredient ? 'Check All' : "",
          ),
        ),

        //-------------------------Ingredient / Instruction List (With Ingredient Add to Cart option
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: isIngredient
                ? IngredientsList(
                    recipeDetailModel: widget.recipeDetailModel,
                  )
                : InstructionsList(
                    recipeDetailModel: widget.recipeDetailModel,
                  ),
          ),
        ),

        // -----------------------Show Instruction Btn---------------------
        ?isIngredient
            ? SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InstructionBtn(
                    isIngredient: isIngredient,
                    saveUpdateBtnText: 'Show Instruction',
                    onPressed: () {
                      setState(() {
                        isIngredient = false;
                      });
                    },
                  ),
                ),
              )
            : null,
      ],
    );
  }

  void onTogglePanelFun() => widget.isPanelOpen
      ? widget.panelController.close()
      : widget.panelController.open();
}
