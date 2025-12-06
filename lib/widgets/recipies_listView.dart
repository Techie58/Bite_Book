import 'package:bite_book/designs/home/category_container_design.dart';
import 'package:bite_book/designs/home/recipes_card_design.dart';
import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/pages/recipe_detail_screen.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipesGridView extends StatelessWidget {
  final List<RecipeDetailModel> recipesModelList;

  const RecipesGridView({super.key, required this.recipesModelList});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: recipesModelList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final currentRecipe = recipesModelList[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    RecipeDetailScreen(recipeDetailModel: currentRecipe),
              ),
            );
          },
          child: RecipesCardDesign(isHomePage: true, index: index, recipeDetailModel: currentRecipe,),
        );
      },
    );
  }
}
