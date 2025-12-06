import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class EditorChoiceCardDesign extends StatelessWidget {
  final int index;

  const EditorChoiceCardDesign({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(recipesImagesList[index], fit: BoxFit.cover),
          ),
        ),
        title: Text(
          editorChoiceRecipesNamesList[index],
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0A2533),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Row(
          children: [
            CircleAvatar(
              maxRadius: 15,
              backgroundImage: AssetImage(recipesImagesList[index]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Editor's Choice",
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
            ),
          ],
        ),
        trailing: CircleAvatar(
          radius: 20,
          backgroundColor: mainBlueColor,
          child: const Icon(Icons.arrow_forward, size: 24, color: Colors.white),
        ),
      ),
    );
  }
}
