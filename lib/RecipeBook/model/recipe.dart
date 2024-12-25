
import 'dart:ui';

import 'package:uuid/uuid.dart';
enum RecipeCategory {
  BREAKFAST('assets/images/breakfast.png', Color(0xFFCDE9BD)), 
  LUNCH('assets/images/lunch.png', Color(0xFFECBEC0)), 
  DINNER('assets/images/dinner.png', Color(0xFFBCCEF8)), 
  SNACK('assets/images/snacks.png', Color(0xFFFFF8BA)), 
  DESSERT('assets/images/desserts.png', Color(0xFFEBBEE6)), 
  DRINK('assets/images/drinks.png', Color(0xFFDEBFB3));

  final String imagePath;
  final Color backgroundColor;
  const RecipeCategory(this.imagePath, this.backgroundColor);
}
const uuid = Uuid();
class Recipe { 
  final String id;
  final String title;
  final List<RecipeCategory> categories;
  final List<Ingredient> ingredients;
  final List<String> ingredientImage;
  final List<String> steps;
  final List<String> images;
  final String readyInTime;
  Recipe({
    required this.title,
    required this.categories,
    required this.ingredients,
    required this.ingredientImage,
    required this.steps,
    required this.images,
    required this.readyInTime,
  }): id = uuid.v4();
}

class Ingredient {
  double baseQuantity;
  String description;
  double currentQuantity;
  List<double> multipliers;

  Ingredient({
    required this.baseQuantity,
    required this.description,
    required this.multipliers,
  }) : currentQuantity = baseQuantity;

  void updateQuantity(int clickCount) {
    // If clickCount exceeds available multipliers, use the last multiplier
    if (clickCount < multipliers.length) {
      currentQuantity = baseQuantity * multipliers[clickCount];
    } else {
      // Use a formula to increase the quantity after the last multiplier
      currentQuantity = baseQuantity * multipliers.last * (1 + (clickCount - multipliers.length + 1) * 0.5); //Increase by 50% after the last multiplier
    }
  }

  String getDisplayText() {
    return "${currentQuantity.toStringAsFixed(2)} $description";
  }
  
}