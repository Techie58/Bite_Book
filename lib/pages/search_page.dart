import 'package:bite_book/designs/category_container_design.dart';
import 'package:bite_book/designs/editor_choice.dart';
import 'package:bite_book/designs/recipes_card_design.dart';
import 'package:bite_book/designs/search_container_design.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/category_listview.dart';
import '../widgets/see_all_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [

          /// 🔹 Title (SliverAppBar style)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: mainBlueColor,
                ),
              ),
            ),
          ),

          /// 🔹 Search Bar
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchContainerDesign(),
            ),
          ),

          /// 🔹 Categories Section
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SeeAllTile(tileName: "Categories"),
                CategoryListView(categoryList: categoryNamesList),
              ],
            ),
          ),

          /// 🔹 Popular Recipes Horizontal List
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SeeAllTile(tileName: "Popular Recipes"),
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                    itemCount: recipesNamesList.length,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 12),
                    itemBuilder: (context, index) {
                      return RecipesCardDesign(index: index, isHomePage: false);
                    },
                  ),
                ),
              ],
            ),
          ),

          /// 🔹 Editor's Choice List
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return EditorChoiceCardDesign(index: index);
              },
              childCount: recipesNamesList.length,
            ),
          ),
        ],
      ),
    );
  }
}
