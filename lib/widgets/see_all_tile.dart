import 'package:flutter/cupertino.dart';

class SeeAllTile extends StatelessWidget{
  final String tileName;

  const SeeAllTile({super.key, required this.tileName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tileName,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0A2533),
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF70b9be),
            ),
          ),
        ],
      ),
    );
  }

}