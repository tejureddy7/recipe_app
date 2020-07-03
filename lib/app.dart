import 'package:flutter/material.dart';
import 'package:recipes_app/ui/screens/login.dart';
import 'package:recipes'
class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipes',

        initialRoute: '/login',
        routes: {


          '/': (context) => LoginScreen(),
          '/login': (context) => LoginScreen(),
        }
    );


  }
}