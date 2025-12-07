import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bite_book/providers/fav_recipe_provider.dart';

class SearchBarDesign extends StatefulWidget {
  final TextEditingController searchTextFieldController;

  const SearchBarDesign({super.key, required this.searchTextFieldController});

  @override
  State<SearchBarDesign> createState() => _SearchBarDesignState();
}

class _SearchBarDesignState extends State<SearchBarDesign> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void onSearchChanged(String value) {
    // Debounce: waits 300ms after user stops typing
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(Duration(milliseconds: 300), () {
      Provider.of<RecipeProvider>(context, listen: false).setSearchQuery(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        controller: widget.searchTextFieldController,
        onChanged: onSearchChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
          suffixIcon: widget.searchTextFieldController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.close, color: Colors.grey[600]),
                  onPressed: () {
                    widget.searchTextFieldController.clear();
                    onSearchChanged('');
                    setState(
                      () {},
                    ); // <-- refresh UI so the clear button disappears
                  },
                )
              : null,
          hintText: 'Search recipes...',
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
        ),
        style: TextStyle(fontSize: 16, color: Colors.grey[800]),
      ),
    );
  }
}
