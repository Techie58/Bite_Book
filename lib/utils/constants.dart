import 'package:bite_book/models/nutritionGridModel.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../models/recipe_detail_model.dart';



final List<RecipeDetailModel> recipes = [
  RecipeDetailModel(
    id: 'recipe_01',
    category: "Breakfast",
    image: 'assets/images/pasta.jpg',
    title: 'Creamy Alfredo Pasta',
    subtitle: 'A rich and creamy pasta dish made with parmesan, cream, and butter.',
    ingredientAmount: ['200g', '1 cup', '1/2 cup', '2 tbsp', '1 tsp', 'to taste', 'for garnish'],
    ingredients: [
      'pasta', 'heavy cream', 'parmesan cheese', 'butter', 'garlic', 'salt & pepper', 'parsley'
    ],
    instructions: [
      'Boil pasta until al dente',
      'Melt butter, sauté garlic',
      'Add cream and simmer',
      'Stir in parmesan cheese',
      'Mix pasta with sauce',
      'Season with salt & pepper',
      'Garnish and serve'
    ],
    nutritionGridList: recipeDetailNutritionGridList,
    relatedRecipes: recipeDetailRelatedRecipes,
    panelController: PanelController(),
  ),
  RecipeDetailModel(
    id: 'recipe_02',
    category: "Lunch",
    image: 'assets/images/biryani.png',
    title: 'Chicken Biryani',
    subtitle: 'Spicy and aromatic chicken biryani with basmati rice.',
    ingredientAmount: ['2 cups','500g','1 cup','2','2 tbsp','1 tsp','to taste','for garnish'],
    ingredients: [
      'basmati rice','chicken','yogurt','onions','biryani masala','ginger-garlic paste','salt','coriander'
    ],
    instructions: [
      'Marinate chicken with yogurt and spices',
      'Fry onions until golden',
      'Cook rice until 70% done',
      'Layer chicken and rice',
      'Cover and cook on low heat',
      'Garnish and serve hot'
    ],
    nutritionGridList: recipeDetailNutritionGridList,
    relatedRecipes: recipeDetailRelatedRecipes,
    panelController: PanelController(),
  ),
  RecipeDetailModel(
    id: 'recipe_03',
    category: "Dinner G",
    image: 'assets/images/salad.jpg',
    title: 'Greek Salad',
    subtitle: 'Fresh vegetables with feta cheese and olives.',
    ingredientAmount: ['2 cups','1 cup','1/2 cup','1/4 cup','1/4 cup','10','2 tbsp','1 tbsp','to taste'],
    ingredients: [
      'lettuce','tomatoes','cucumbers','red onion','feta cheese','olives','olive oil','lemon juice','salt & pepper'
    ],
    instructions: [
      'Chop vegetables',
      'Mix in bowl',
      'Add feta and olives',
      'Drizzle olive oil and lemon juice',
      'Season with salt & pepper',
      'Toss gently and serve'
    ],
    nutritionGridList: recipeDetailNutritionGridList,
    relatedRecipes: recipeDetailRelatedRecipes,
    panelController: PanelController(),
  ),
];
//
//
//
//-------------------Banners-------------------
const List<String> bannersPicsList = [
  "assets/images/banner1.jpg",
  "assets/images/banner2.jpg",
  "assets/images/banner3.jpg",
];

//-------------------Quick Info-------------------
const List<String> ratingList = ["20", "40", "10"]; // minutes
const List<String> kcalList = ["120", "189", "65"]; // kcal

//-------------------Recipes List for GridView-------------------
const List<String> recipesImagesList = [
  "assets/images/pasta.jpg",
  "assets/images/biryani.png",
  "assets/images/salad.jpg",
];
//
const List<String> editorChoiceRecipesNamesList = [
  "Pasta",
  "Biryani",
  "Caesar Salad",
];
//
const List<String> categoryNamesList = [
  "Breakfast",
  "Lunch",
  "Dinner",
];
//
// //-------------------Recipe Detail Dummy Data-------------------
// const String recipeDetailImage = 'assets/images/pasta.jpg';
// const String recipeDetailTitle = "Creamy Alfredo Pasta";
// const String recipeDetailSubtitle =
//     "A rich and creamy pasta dish made with parmesan, cream, and butter, garnished with fresh parsley.";
//
// Nutrition Grid
final List<NutritionGridModel> recipeDetailNutritionGridList = [
  NutritionGridModel(title: "50g carbs", icon: Icons.rice_bowl),
  NutritionGridModel(title: "12g proteins", icon: Icons.fitness_center),
  NutritionGridModel(title: "450 Kcal", icon: Icons.local_fire_department),
  NutritionGridModel(title: "20g fats", icon: Icons.opacity),
];

// Related Recipes
const List<Map<String, String>> recipeDetailRelatedRecipes = [
  {
    'image': 'assets/images/biryani.jpg',
    'title': 'Chicken Biryani',
    'subtitle': 'Spicy and aromatic chicken biryani with basmati rice.'
  },
  {
    'image': 'assets/images/salad.jpg',
    'title': 'Greek Salad',
    'subtitle': 'Fresh vegetables with feta cheese and olives.'
  },
  {
    'image': 'assets/images/pancakes.jpg',
    'title': 'Fluffy Pancakes',
    'subtitle': 'Soft and airy pancakes perfect for breakfast.'
  },
];

const List<int> favItems=[];
