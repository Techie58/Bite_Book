// lib/providers/recipe_provider.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/recipe_detail_model.dart';

class RecipeProvider extends ChangeNotifier {
  final List<RecipeDetailModel> _allRecipes;
  Set<String> _favorites = {};
  String _selectedCategory = 'All';
  String _searchQuery = '';

  RecipeProvider(this._allRecipes) {
    _loadFavorites();
  }

  // expose unmodifiable lists
  List<RecipeDetailModel> get allRecipes => List.unmodifiable(_allRecipes);

  // favorites set
  Set<String> get favoriteIds => _favorites;

  // current filtered list based on category + search
  List<RecipeDetailModel> get filteredRecipes {
    var list = _allRecipes;
    if (_selectedCategory != 'All') {
      list = list.where((r) => r.category == _selectedCategory).toList();
    }
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      list = list.where((r) =>
      r.title.toLowerCase().contains(query) ||
          r.subtitle.toLowerCase().contains(query)
      ).toList();
    }
    return list;
  }

  List<RecipeDetailModel> get favoriteRecipes =>
      _allRecipes.where((r) => _favorites.contains(r.id)).toList();

  // actions:
  void toggleFavorite(String id) {
    if (_favorites.contains(id)) _favorites.remove(id);
    else _favorites.add(id);
    notifyListeners();
    _saveFavorites();
  }

  bool isFavorite(String id) => _favorites.contains(id);

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  String get selectedCategory => _selectedCategory;

  void setSearchQuery(String q) {
    _searchQuery = q;
    notifyListeners();
  }

  // Persist favorites to SharedPreferences (simple)
  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favList = prefs.getStringList('favorites') ?? [];
    _favorites = favList.toSet();
    notifyListeners();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('favorites', _favorites.toList());
  }
}
