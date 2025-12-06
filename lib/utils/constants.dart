import 'package:bite_book/models/nutritionGridModel.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../models/recipe_detail_model.dart';



final List<RecipeDetailModel> recipes = [
  RecipeDetailModel(
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
  NutritionGridModel(title: "50g carbs", icon: HugeIcons.strokeRoundedBread04),
  NutritionGridModel(title: "12g proteins", icon: HugeIcons.strokeRoundedAvocado),
  NutritionGridModel(title: "450 Kcal", icon: HugeIcons.strokeRoundedFire03),
  NutritionGridModel(title: "20g fats", icon: HugeIcons.strokeRoundedPizza01),
];
//
// //-------------------Ingredients for 3 recipes-------------------
// const List<List<String>> recipeDetailIngredients = [
//   // Recipe 1 - Creamy Alfredo Pasta
//   [
//     '200g pasta (penne or fettuccine)',
//     '1 cup heavy cream',
//     '1/2 cup grated parmesan cheese',
//     '2 tbsp butter',
//     '1 tsp garlic, minced',
//     'Salt & pepper to taste',
//     'Chopped parsley for garnish',
//   ],
//
//   // Recipe 2 - Chicken Biryani
//   [
//     '2 cups basmati rice',
//     '500g chicken, cut into pieces',
//     '1 cup yogurt',
//     '2 onions, sliced',
//     '2 tbsp biryani masala',
//     '1 tsp ginger-garlic paste',
//     'Salt to taste',
//     'Fresh coriander for garnish',
//   ],
//
//   // Recipe 3 - Greek Salad
//   [
//     '2 cups chopped lettuce',
//     '1 cup diced tomatoes',
//     '1/2 cup sliced cucumbers',
//     '1/4 cup sliced red onion',
//     '1/4 cup feta cheese',
//     '10 olives, halved',
//     '2 tbsp olive oil',
//     '1 tbsp lemon juice',
//     'Salt & pepper to taste',
//   ],
// ];
//
// //-------------------Instructions for 3 recipes-------------------
// const List<List<String>> recipeDetailInstructions = [
//   // Recipe 1 - Creamy Alfredo Pasta
//   [
//     'Boil pasta in salted water until al dente. Drain and set aside.',
//     'In a pan, melt butter and sauté garlic until fragrant.',
//     'Add cream and simmer for 2-3 minutes.',
//     'Stir in parmesan cheese until sauce is smooth.',
//     'Add cooked pasta to the sauce and mix well.',
//     'Season with salt and pepper.',
//     'Garnish with chopped parsley and serve hot.',
//   ],
//
//   // Recipe 2 - Chicken Biryani
//   [
//     'Marinate chicken with yogurt, biryani masala, and salt for 30 minutes.',
//     'Fry sliced onions until golden brown.',
//     'Cook rice until 70% done and drain.',
//     'Layer chicken and rice in a pot, adding fried onions on top.',
//     'Cover and cook on low heat for 25-30 minutes.',
//     'Garnish with fresh coriander and serve hot.',
//   ],
//
//   // Recipe 3 - Greek Salad
//   [
//     'Chop lettuce, tomatoes, cucumbers, and red onion.',
//     'Mix all vegetables in a large bowl.',
//     'Add feta cheese and olives on top.',
//     'Drizzle olive oil and lemon juice.',
//     'Season with salt and pepper.',
//     'Toss gently and serve immediately.',
//   ],
// ];
//
// // ------------------Ingredient Amount
//
// const List<List<String>> ingredientAmount = [
//   ['6','2','5','1','9'],
//   ['9','4','5','5','9'],
//   ['4','8','1','1','9'],
// ];

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
