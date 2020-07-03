import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // New private method which includes the background image:
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/food.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }


    Text _buildText() {
      return Text(
        'Recipes',
         style: Theme.of(context).textTheme.headline1,
         textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      // We do not use backgroundColor property anymore.
      // New Container widget wraps our Center widget:
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              MaterialButton(
                color: Colors.white,
                child: Text("Sign In with Google"),
                onPressed: () => print("Button pressed."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}