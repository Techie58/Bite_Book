import 'package:bite_book/designs/recipeDetail/favourite_btn.dart';
import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/providers/fav_recipe_provider.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../models/nutritionGridModel.dart';
import '../widgets/recipeDetailWidgets/recipe_detail_panel.dart';

class RecipeDetailScreen extends StatefulWidget {
  final RecipeDetailModel recipeDetailModel;

  const RecipeDetailScreen({
    super.key,

    required this.recipeDetailModel,
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
            controller: widget.recipeDetailModel.panelController,
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
              child: Image.asset(widget.recipeDetailModel.image, fit: BoxFit.cover),
            ),
            panelBuilder: (controller) => RecipeDetailPanel(
              panelController: widget.recipeDetailModel.panelController,
              recipeDetailModel: widget.recipeDetailModel,
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
                      iconData: Icons.arrow_back_ios_new_outlined,
                      containerSize: screenWidth * 0.10,
                      iconSize: screenWidth * 0.07,
                    ),
                  ),
                  Consumer<RecipeProvider>(builder: (context,provider,_){
                    final isFav = provider.isFavorite(widget.recipeDetailModel.id);

                    return FavouriteBtn(
                      iconData: isFav ? Icons.favorite : Icons.favorite_border_rounded,
                      containerSize: screenWidth * 0.10,
                      iconSize: screenWidth * 0.07,
                      containerColor: Colors.white,
                      iconColor: isFav ? Colors.red : Colors.black,
                      onTap: (){
                        provider.toggleFavorite(widget.recipeDetailModel.id);
                      },


                    );
                  })

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
