import 'package:bite_book/designs/category_container_design.dart';
import 'package:bite_book/designs/recipes_card_design.dart';
import 'package:flutter/cupertino.dart';

class RecipiesListView extends StatelessWidget {
  final List<String> bannersPics;

  const RecipiesListView({super.key, required this.bannersPics});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: bannersPics.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return RecipesCardDesign(recipeNames: bannersPics,recipesImages: bannersPics, index: index);
      },
    );
  }
}
