import 'package:Meals/models/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {

  final Meal meal;

  const MealItem(this.meal)

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(meal.title),
    );
  }
}