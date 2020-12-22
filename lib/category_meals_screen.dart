import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The recipes'),
      ),
      body: Center(
        child: Text('The reciples for the category!'),
      ),
    );
  }
}
