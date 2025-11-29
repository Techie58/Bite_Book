import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int bottomNavIndex;
  final Function(int) onTap;

  const MyBottomNavigationBar({
    super.key,
    required this.bottomNavIndex,
    required this.onTap,
  });

  @override
  State<MyBottomNavigationBar> createState() =>
      _BottomNavigationBar(bottomNavIndex: bottomNavIndex);
}

class _BottomNavigationBar extends State<MyBottomNavigationBar> {
  int _bottomNavIndex;

  final List<IconData> navBarIconList = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.favorite_border_rounded,
    Icons.settings,
  ];

  _BottomNavigationBar({required int bottomNavIndex})
    : _bottomNavIndex = bottomNavIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: navBarIconList,
      backgroundColor: Colors.white,
      activeColor: Colors.cyan,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      activeIndex: _bottomNavIndex,
      onTap: (index) {
        widget.onTap(index);
        setState(() {
          _bottomNavIndex = index;
        });
      },
    );
  }
}
