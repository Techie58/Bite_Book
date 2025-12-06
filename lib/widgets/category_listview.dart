// lib/widgets/category_list.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/fav_recipe_provider.dart';

class CategoryListView extends StatelessWidget {
  final List<String> categoryList;
  const CategoryListView({required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Consumer<RecipeProvider>(
      builder: (context, prov, _) {
        final selected = prov.selectedCategory;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Add 'All' option
            _buildChip(context, 'All', selected == 'All'),
            for (final c in categoryList) _buildChip(context, c, selected == c),
          ],
        );
      },
    );
  }

  Widget _buildChip(BuildContext context, String label, bool active) {
    final prov = Provider.of<RecipeProvider>(context, listen: false);
    return ChoiceChip(
      label: Text(label),
      selected: active,
      onSelected: (_) => prov.setCategory(label),
    );
  }
}
