import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    double _iconSize = 20.0;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 2.0,
          bottom: TabBar(
            labelColor: Theme.of(context).indicatorColor,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.fastfood,size: _iconSize)),
              Tab(icon: Icon(Icons.done,size: _iconSize))
            ],
          ),

        ),

        body: Padding(
          padding: EdgeInsets.all(6.0),
          child: TabBarView(
            children: <Widget>[
              Center(child: Text('recipes')),
              Center(child: Text('ingredients')),

            ],

          ),
        ),
      ),
    );
  }
}