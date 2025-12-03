import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedContainerDesign extends StatelessWidget {
  final int index;
  final List<String> bannersPics;

  const FeaturedContainerDesign({
    super.key,
    required this.index,
    required this.bannersPics,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(bannersPics[index]),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
