import 'package:flutter/material.dart';
import 'package:recipes_app/ui/screens/login.dart';
import 'package:recipes_app/ui/screens/theme.dart';
import 'package:recipes_app/ui/screens/home.dart';
class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipes',
        theme: buildTheme(),
        initialRoute: '/login',
        routes: {


          '/': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
        }
    );


  }
}