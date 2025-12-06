import 'package:bite_book/main_navScreen.dart';
import 'package:bite_book/pages/home.dart';
import 'package:bite_book/providers/fav_recipe_provider.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => RecipeProvider(recipes)),
      
    ],
    child:MaterialApp(
      title: 'BiteBook',
      debugShowCheckedModeBanner: false,
      home: MainNavScreen(),
    ) ,);
      
  }

}
