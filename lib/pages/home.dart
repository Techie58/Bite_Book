import 'package:bite_book/designs/home/category_container_design.dart';
import 'package:bite_book/main_navScreen.dart';
import 'package:bite_book/models/recipe_detail_model.dart';
import 'package:bite_book/pages/allRecpesPage.dart';
import 'package:bite_book/pages/search_page.dart';
import 'package:bite_book/widgets/appBar.dart';
import 'package:bite_book/widgets/category_listview.dart';
import 'package:bite_book/widgets/featured_banner_pageController.dart';
import 'package:bite_book/widgets/recipes_gridView.dart';
import 'package:bite_book/widgets/see_all_tile.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Home extends StatelessWidget {
  final List<RecipeDetailModel> recipesModelList;

  Home({super.key, required this.recipesModelList});

  PageController bannerController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(
                partOfDayText: "Good Evening",
                nameOfUser: userName,
                onPressed: () {
                  MainNavScreen.globalKey.currentState?.onNavTap(1);
                  },
              ),
              SizedBox(height: 4),
              FeaturedBannerPageController(
                bannersPics: bannersPicsList,
                bannerController: bannerController,
              ),
              SeeAllTile(tileName: "Category"),
              CategoryListView(categoryList: categoryNamesList),
              SeeAllTile(
                tileName: 'Popular Recipes',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllRecipesPage()));
                },
              ),
              RecipesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
