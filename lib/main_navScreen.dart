import 'package:bite_book/pages/fav_page.dart';
import 'package:bite_book/pages/home.dart';
import 'package:bite_book/pages/search_page.dart';
import 'package:bite_book/pages/setting_page.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:bite_book/widgets/my_bottom_navigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainNavScreen extends StatefulWidget {

  static final GlobalKey<_MainNavigationState> globalKey =
  GlobalKey<_MainNavigationState>();

  final int index;
  const MainNavScreen({super.key, this.index = 0});

  @override
  State<MainNavScreen> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavScreen> {
  final PanelController panelController = PanelController();
  late int currentIndex = 0;
  List<Widget> get screen => [
    Home(recipesModelList: recipes),
    SearchPage(recipeDetailModelList: recipes,),
    FavPage(),
    SettingPage(),
  ];

  void onNavTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF042628),
        elevation: 5,
        shape: CircleBorder(),
        child: HugeIcon(
          icon: HugeIcons.strokeRoundedChef,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screen[currentIndex],

      bottomNavigationBar: MyBottomNavigationBar(
        bottomNavIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
