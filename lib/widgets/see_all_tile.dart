import 'package:bite_book/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class SeeAllTile extends StatelessWidget{
  final String tileName,seeAll;


  const SeeAllTile({super.key, required this.tileName,  this.seeAll = "See All"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,bottom: 10,left: 23,right: 28),
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
            seeAll,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: myCyanColor,
            ),
          ),
        ],
      ),
    );
  }

}