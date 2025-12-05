import 'package:bite_book/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IngredientCardDesign extends StatefulWidget {
  final String ingredientImage;
  final String ingredientName, ingredientAmount;
  final bool chekBox;

  const IngredientCardDesign({
    super.key,
    required this.ingredientImage,
    required this.ingredientName,
    required this.ingredientAmount, required this.chekBox,
  });

  @override
  State<IngredientCardDesign> createState() => _IngredientCardDesignState();
}

class _IngredientCardDesignState extends State<IngredientCardDesign> {
  late bool chekBox;

  @override
  void initState() {
    super.initState();
    chekBox = widget.chekBox ;

  }

  void chekBoxOnChange(bool? value) {
    setState(() {
      chekBox =  value  ?? false;   });
  }



  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;
    double picCardSize = screenWidth * 0.2;
    return Card(
      elevation: 2,
      color: transparentGrey,
      child: ListTile(
        minTileHeight: screenWidth * 0.21,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.ingredientImage, fit: BoxFit.cover),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.ingredientName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mainBlueColor,
              ),
            ),
            Text(
              widget.ingredientAmount,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mainBlueColor,
              ),
            ),
          ],
        ),

        trailing: Checkbox(
          value: chekBox,
          onChanged: (value) => chekBoxOnChange(value),
        ),
      ),
    );
  }
}


