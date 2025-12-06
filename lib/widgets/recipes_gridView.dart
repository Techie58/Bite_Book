import 'package:bite_book/designs/home/recipes_card_design.dart';
import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/pages/recipe_detail_screen.dart';
import 'package:bite_book/providers/fav_recipe_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipesGridView extends StatelessWidget {


  const RecipesGridView({super.key,});
  @override
  Widget build(BuildContext context) {
    final recipeProvider = Provider.of<RecipeProvider>(context);
    final recipes = recipeProvider.filteredRecipes;


    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: recipes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final currentRecipe = recipes[index];
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
