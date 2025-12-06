import 'package:bite_book/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FavouriteBtn extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final Color? iconColor;
  final double containerSize;
  final Color? containerColor;
  final double containerRadius;
  final Function()? onTap;

  const FavouriteBtn({
    Key? key,
    required this.iconData,
    required this.containerSize,
    required this.iconSize,
    this.iconColor = mainBlueColor,
    this.containerColor = transparentGrey,
    this.containerRadius = 6,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: containerSize,
        height: containerSize,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(containerRadius),
        ),
        child: Center(
          child: Icon(iconData, size: iconSize, color: iconColor),
        ),
      ),
    );
  }
}
