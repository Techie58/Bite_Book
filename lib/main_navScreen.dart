import 'package:bite_book/pages/fav_page.dart';
import 'package:bite_book/pages/home.dart';
import 'package:bite_book/pages/search_page.dart';
import 'package:bite_book/pages/setting_page.dart';
import 'package:bite_book/widgets/my_bottom_navigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MainNavScreen extends StatefulWidget {
  @override
  State<MainNavScreen> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavScreen> {
  int currentIndex = 0;
  final List<Widget> screen = [Home(), SearchPage(), FavPage(), SettingPage()];

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
        child: HugeIcon(icon: HugeIcons.strokeRoundedChef,color: Colors.white,size: 30,),
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
