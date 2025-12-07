import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarDesign extends StatelessWidget {
  final TextEditingController searchTextFieldController;

  const SearchBarDesign({super.key, required this.searchTextFieldController});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: searchTextFieldController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
          hintText: 'Search Recipe....',
          focusedBorder: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
