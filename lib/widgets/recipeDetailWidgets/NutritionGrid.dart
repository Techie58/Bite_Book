import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../designs/recipeDetail/favourite_btn.dart';
import '../../models/nutritionGridModel.dart';

class NutritionGrid extends StatelessWidget {
  final List<NutritionGridModel> recipeDetailNutritionGridList;
  const NutritionGrid({super.key, required this.recipeDetailNutritionGridList});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final iconContainerSize = screenWidth * 0.15;  // ~40 on small phones
    final iconSize = screenWidth * 0.10;           // ~24–28

    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3,        // clean professional horizontal cards
        crossAxisSpacing: 6,
        mainAxisSpacing: 12

      ),

      itemCount: recipeDetailNutritionGridList.length,

      itemBuilder: (context, index) {
        final recipeDetailNutritionGrid = recipeDetailNutritionGridList[index];


        return Row(
          children: [
            FavouriteBtn(
              hugeIcon: recipeDetailNutritionGrid.icon,
              containerSize: iconContainerSize,
              iconSize: iconSize,
              containerRadius: 14,
            ),
            const SizedBox(width: 12),
            Text(
              recipeDetailNutritionGrid.title ?? '',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: mainBlueColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
