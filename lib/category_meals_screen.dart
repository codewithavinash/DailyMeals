import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipes'),
      ),
      body: Center(
        child: Text(
          'The Recipes For The Category!',
        ),
      ),
    );
  }
}