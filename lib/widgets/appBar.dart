import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final partOfDayText;
  final nameOfUser;

  const MyAppBar({
    super.key,
    required this.partOfDayText,
    required this.nameOfUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(partOfDayText, style: TextStyle(fontSize: 20,color: Color(0xFF0A2533),fontFamily: 'Body/Small - Regular')),
              Text(nameOfUser, style: TextStyle(fontSize: 32,color: Color(0xFF0A2533),fontFamily: 'Body/Small - Regular',fontWeight: FontWeight.bold)),
            ],
          ),Icon(Icons.shopping_cart_outlined,size: 24,),
        ],
      ),
    );
  }
}
