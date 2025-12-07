import 'package:flutter/material.dart';
import 'package:bite_book/utils/colors.dart';

class CategoryDesign extends StatefulWidget {
  final List<String> categoryList;

  const CategoryDesign({super.key, required this.categoryList});

  @override
  State<CategoryDesign> createState() => _CategoryDesignState();
}

class _CategoryDesignState extends State<CategoryDesign> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: widget.categoryList.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? myCyanColor : myTransparentGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.categoryList[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : const Color(0xFF0a2533),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
