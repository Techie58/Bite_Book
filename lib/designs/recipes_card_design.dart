import 'package:flutter/material.dart';

class RecipesCardDesign extends StatelessWidget {
  final List<String> recipeNames;
  final List<String> recipesImages;
  final List<String> kcal;
  final List<String> time;
  final int index;
  final VoidCallback? onTap;

  const RecipesCardDesign({
    super.key,
    required this.recipeNames,
    required this.index,
    required this.recipesImages,
    required this.kcal,
    required this.time,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.42,                // RESPONSIVE WIDTH
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: Stack(
                children: [
                  Image.asset(
                    recipesImages[index],
                    height: screenWidth * 0.28,     // RESPONSIVE HEIGHT
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite_border_rounded,
                          size: 16, color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                recipeNames[index],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.2,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[900],
                ),
              ),
            ),

            const SizedBox(height: 6),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(Icons.local_fire_department_outlined,
                      size: 15, color: Colors.grey[500]),

                  Text("  ${kcal[index]} Kcal",
                      style: TextStyle(fontSize: 12, color: Colors.grey[600])),

                  const SizedBox(width: 6),

                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: 6),

                  Icon(Icons.access_time_outlined,
                      size: 15, color: Colors.grey[500]),

                  Text("  ${time[index]} Min",
                      style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                ],
              ),
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
