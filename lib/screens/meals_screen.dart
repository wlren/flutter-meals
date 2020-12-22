import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/category-meal';
  // final String categoryID;
  // final String categoryTitle;

  // CategoryMealScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealIteam(
            title: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
            imageURL: categoryMeals[index].imageUrl,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
