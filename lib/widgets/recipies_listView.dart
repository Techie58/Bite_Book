import 'package:bite_book/designs/category_container_design.dart';
import 'package:bite_book/designs/recipes_card_design.dart';
import 'package:flutter/cupertino.dart';

class RecipesGridView extends StatelessWidget {
  final List<String> recipesPicsList;
  final List<String> recipesNameList;


  const RecipesGridView({super.key, required this.recipesPicsList, required this.recipesNameList});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: recipesNameList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return RecipesCardDesign(
          time: ["20",'40','10'],
          kcal: ['120','189','65'],
          recipeNames: recipesNameList,
          recipesImages: recipesPicsList,
          index: index,
        );
      },
    );

  }
}
