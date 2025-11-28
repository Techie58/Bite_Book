import 'package:flutter/material.dart';

class RecipesCardDesign extends StatelessWidget {
  final List<String> recipeNames;
  final List<String> recipesImages;
  final int index;

  const RecipesCardDesign({
    super.key,
    required this.recipeNames,
    required this.index,
    required this.recipesImages,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: [
          Container(
            height: 128,
            width: 168,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(recipesImages[index]),fit: BoxFit.cover,),
            ),
          ),
          Text(recipeNames[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),maxLines: 2,),
        ],
      ),
    );
  }
}
