import 'package:bite_book/widgets/appBar.dart';
import 'package:bite_book/widgets/bottom_navBar.dart';
import 'package:bite_book/widgets/category_listview.dart';
import 'package:bite_book/widgets/featured_banner_pageController.dart';
import 'package:bite_book/widgets/recipies_listView.dart';
import 'package:bite_book/widgets/see_all_tile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  PageController bannerController = PageController();
  List<String> bannersPicsList = [
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
  ];
  List<String> recipesImagesList = [
    "assets/images/lunch.jpg",
    "assets/images/lunch1.jpg",
    "assets/images/lunch3.jpg",
  ];
  List<String> categoryNamesList = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Lunch",
    "Breakfast",
    "Lunch",
  ];
  List<String> recipesNamesList = [
    "Biryani",
    "Tacos",
    "Pasta",
  //   "Curry",
  //   "Chicken",
  //   "Grilled Chicken",

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.black,child: Icon(Icons.add,color: Colors.white,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomNavigationBar(bottomNavIndex: 0),
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
                CategoryListView(categoryList: categoryNamesList),
                SeeAllTile(tileName: 'Popular Recipes'),

                /// 🔥 FIX HERE
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
