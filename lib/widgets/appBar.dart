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
              Row(
                children: [
                  Icon(Icons.sunny, color: Color(0x904D8194)),
                  SizedBox(width: 10),
                  Text(
                    partOfDayText,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF0A2533),
                      fontFamily: 'Body/Small - Regular',
                    ),
                  ),
                ],
              ),
              Text(
                nameOfUser,
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFF0A2533),
                  fontFamily: 'Body/Small - Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.search_outlined),
              SizedBox(width: 10,),
              Icon(Icons.shopping_cart_outlined, size: 24),
            ],
          ),
        ],
      ),
    );
  }
}
