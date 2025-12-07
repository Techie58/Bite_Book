// lib/screens/favorites.dart
import 'package:bite_book/designs/home/recipes_card_design.dart';
import 'package:bite_book/pages/recipe_detail_screen.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/fav_recipe_provider.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<RecipeProvider>(context);
    final favorites = prov.favoriteRecipes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Recipes'),
        backgroundColor: Colors.white,
        elevation: 2,
        foregroundColor: myMainBlueColor,
        centerTitle: true,
      ),
      body: favorites.isEmpty
          ? Center(child: Text('No favorites yet'))
          : GridView.builder(
              itemCount: favorites.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final currentRecipe = favorites[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailScreen(
                          recipeDetailModel: currentRecipe,
                        ),
                      ),
                    );
                  },
                  child: RecipesCardDesign(
                    recipeDetailModel: favorites[index],
                    index: index,
                    isHomePage: true,
                  ),
                );
              },
            ),
    );
  }
}
