import 'package:bite_book/designs/home/category_container_design.dart';
import 'package:bite_book/widgets/appBar.dart';
import 'package:bite_book/widgets/my_bottom_navigationBar.dart';
import 'package:bite_book/widgets/category_listview.dart';
import 'package:bite_book/widgets/featured_banner_pageController.dart';
import 'package:bite_book/widgets/recipies_listView.dart';
import 'package:bite_book/widgets/see_all_tile.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../utils/constants.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  PageController bannerController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(partOfDayText: "Good Evening", nameOfUser: "Musa Javed"),
              SizedBox(height: 4),
              FeaturedBannerPageController(
                bannersPics: bannersPicsList,
                bannerController: bannerController,
              ),
              SeeAllTile(tileName: "Category"),
              CategoryDesign(categoryList: categoryNamesList),
              SeeAllTile(tileName: 'Popular Recipes'),

              RecipesGridView(
                recipesPicsList: recipesImagesList,
                recipesNameList: recipesNamesList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
