import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RelatedRecipesList extends StatelessWidget {
  final List<Map<String, String>> recipes;
  const RelatedRecipesList({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final recipe = recipes[index];
          return Container(
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(recipe['image']!),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(8),
            child: Text(
              recipe['title']!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.black38,
              ),
            ),
          );
        },
      ),
    );
  }
}
