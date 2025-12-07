import 'package:bite_book/utils/colors.dart';
import 'package:bite_book/widgets/recipes_gridView.dart';
import 'package:flutter/material.dart';

class AllRecipesPage extends StatelessWidget {
  const AllRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        backgroundColor: Colors.white,
        foregroundColor: myMainBlueColor,
      ),
      body: RecipesGridView(),
    );
  }
}
