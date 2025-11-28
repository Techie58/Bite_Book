import 'package:bite_book/widgets/appBar.dart';
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
  List<String> bannersPics = [
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(partOfDayText: "Good Evening", nameOfUser: "Musa Javed"),
            SizedBox(height: 4,),
            FeaturedBannerPageController(
              bannersPics: bannersPics,
              bannerController: bannerController,
            ),
            SizedBox(height: 25),
            SeeAllTile(tileName: "Category",),
            SizedBox(height: 10,),
            CategoryListView(categoryList: ["Breakfast","Lunch","Dinner","Lunch","Breakfast","Lunch",],),
            SizedBox(height: 25,),
            SeeAllTile(tileName: 'Popular Recipes'),
            SizedBox(height: 10,),
            SizedBox(
              height: 300,
                child: RecipiesListView(bannersPics: ["Breakfast","Lunch","Dinner","Lunch","Breakfast","Lunch",],)),
          ],
        ),
      ),
    );
  }
}
