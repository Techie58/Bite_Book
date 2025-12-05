import 'package:bite_book/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleIngredientOrInstruction extends StatefulWidget {
  final bool isIngredients;
  final Function(bool isIngredients) onToggle;

  const ToggleIngredientOrInstruction({
    super.key,
    required this.onToggle,
    this.isIngredients = true,
  });

  @override
  State<ToggleIngredientOrInstruction> createState() => _ToggleState();
}

class _ToggleState extends State<ToggleIngredientOrInstruction> {
  late bool isIngredients ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isIngredients = widget.isIngredients;
  }

  @override
  void didUpdateWidget(covariant ToggleIngredientOrInstruction oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isIngredients != widget.isIngredients) {
      setState(() {
        isIngredients = widget.isIngredients;
      });
    }

  }

  void onTap(bool value) {
    setState(() {
      isIngredients = value;
    });
    widget.onToggle(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: transparentGrey,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: transparentGrey),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () =>onTap(true),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isIngredients
                        ? mainBlueColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: isIngredients
                          ? Colors.white
                          : mainBlueColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => onTap(false),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isIngredients
                        ? Colors.transparent
                        : mainBlueColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Instruction',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: isIngredients
                          ? mainBlueColor
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
