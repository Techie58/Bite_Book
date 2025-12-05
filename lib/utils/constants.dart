import 'package:bite_book/models/nutritionGridModel.dart';
import 'package:bite_book/widgets/recipeDetailWidgets/NutritionGrid.dart';
import 'package:hugeicons/hugeicons.dart';

const List<String> bannersPicsList = [
  "assets/images/banner1.jpg",
  "assets/images/banner2.jpg",
  "assets/images/banner3.jpg",
];
const List<String> timeList = ["20", '40', '10'];
const List<String> kcalList = ['120', '189', '65'];

const List<String> recipesImagesList = [
  "assets/images/lunch.jpg",
  "assets/images/lunch1.jpg",
  "assets/images/lunch3.jpg",
];
List<String> categoryNamesList = [
  "Breakfast",
  "Lunch",
  "Dinner",
  "Lunch",
  "Breakfast",
  "Lunch",
];
List<String> recipesNamesList = [
  "Biryani",
  "Tacos",
  "Pasta",

  //   "Curry",
  //   "Chicken",
  //   "Grilled Chicken",
];

//-----------------------------------Recipe Detail Screen--------------------------------------------------

const String recipeDetailImage = 'assets/images/lunch.jpg';
const String recipeDetailTitle = "Pasta";
const String recipeDetailSubtitle =
    "Pasta is a staple food of Italian origin made from a simple unleavened dough of ground grain (typically durum wheat semolina) and water or eggs, which is formed into various shapes and cooked, usually by boiling. ";
final List<NutritionGridModel> recipeDetailNutritionGridList = [
  NutritionGridModel(title: "128g carbs", icon: HugeIcons.strokeRoundedBread04),
  NutritionGridModel(
    title: "17g proteins",
    icon: HugeIcons.strokeRoundedAvocado,
  ),
  NutritionGridModel(title: "120 Kcal", icon: HugeIcons.strokeRoundedFire03),
  NutritionGridModel(title: "91g fats", icon: HugeIcons.strokeRoundedPizza01),
];

const String instruction =
    " To prepare the recipe, start by washing and chopping all the ingredients and keeping the spices measured and ready. Heat some oil in a pan over medium flame, then add the onions and sauté until golden brown. Mix in the ginger–garlic paste and cook until the raw smell disappears. Add the tomatoes and cook until they soften, then add all the spices and stir well to combine. Add the main ingredient—such as chicken or vegetables—and cook until it changes color and starts to release its aroma. Pour in water, milk, or stock as needed, cover the pan, and let it cook on low heat until fully done. Finally, taste and adjust the seasoning, garnish with fresh coriander or green chilies, and serve hot. ";

const List<String> recipeDetailIngredients = [
  'wheat semolina',
  'water',
  'cream',
  'chees',
];
const List<String> recipeDetailInstructions = [
  'Flavor and color can be added with ingredients like spinach, tomato puree, or squid ink.',
  ' Gluten-free options are also available using flours from rice, corn, or legumes.',
];
const List<Map<String, String>> recipeDetailRelatedRecipes = [
  {'name': 'Alice', 'city': 'New York'},
  {'name': 'Bob', 'city': 'London'},
  {'name': 'Charlie', 'city': 'Paris'},
];
