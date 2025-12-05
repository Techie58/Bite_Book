import 'package:bite_book/utils/colors.dart';
import 'package:flutter/material.dart';

class InstructionBtn extends StatelessWidget{

  final bool isIngredient;
  final String saveUpdateBtnText;
  final Function()? onPressed;

  const InstructionBtn({
    super.key,
    required this.isIngredient, required this.saveUpdateBtnText, required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: mainBlueColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade300.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.integration_instructions, color: Colors.white, size: 22),
            const SizedBox(width: 8),
            Text(
              saveUpdateBtnText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );


  }

}