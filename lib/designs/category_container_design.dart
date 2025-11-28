import 'package:flutter/cupertino.dart';

class CategoryDesign extends StatelessWidget{
  final List<String> categoryList;

  const CategoryDesign({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  width: 119,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF1F5F5),
                  ),
                  child: Center(
                    child: Text(
                      categoryList[index],
                      style: TextStyle(
                        fontSize: 23,
                        color: Color(0xFF0a2533),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

  }

}