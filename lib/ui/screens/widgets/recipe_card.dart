import 'package:flutter/material.dart';

import 'package:recipes_app/model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  //final bool inFavorites;
 // final Function onFavoriteButtonPressed;

  RecipeCard({@required this.recipe,
  }
       );

  @override
  Widget build(BuildContext context) {

    Padding _buildTitleSection() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          // Default value for crossAxisAlignment is CrossAxisAlignment.center.
          // We want to align title and description of recipes left:
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              recipe.name,

              style: Theme.of(context).textTheme.title,
            ),
            // Empty space:
            SizedBox(height: 10.0),
            Container(
              color: Colors.greenAccent,
              child: Row(
              children: [
                Icon(Icons.timeline, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  recipe.duration.toString(),
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () => print("Tapped!"),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // We overlap the image and the button by
              // creating a Stack object:
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      recipe.imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),

                ],
              ),
              _buildTitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
