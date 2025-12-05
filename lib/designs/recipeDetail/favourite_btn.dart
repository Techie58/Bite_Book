import 'package:bite_book/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FavouriteBtn extends StatelessWidget {
  final List<List<dynamic>> hugeIcon;
  final double iconSize;
  final Color? iconColor;
  final double containerSize;
  final Color? containerColor;
  final double containerRadius;

  const FavouriteBtn({
    Key? key,
    required this.hugeIcon,
    required this.containerSize,
    required this.iconSize,
    this.iconColor = mainBlueColor,
    this.containerColor = transparentGrey, this.containerRadius = 6,
  });

  @override
  Widget build(BuildContext context) {
    double iconnSize= containerSize - 0.6;
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(containerRadius),
      ),
      child: Center(child: HugeIcon( icon: hugeIcon, size: iconSize, color: iconColor,)),
    );
  }
}
