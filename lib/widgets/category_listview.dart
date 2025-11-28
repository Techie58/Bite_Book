import 'package:bite_book/designs/category_container_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  final List<String> categoryList;

  const CategoryListView({super.key, required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return CategoryDesign(categoryList: categoryList)
      ;
  }
}
