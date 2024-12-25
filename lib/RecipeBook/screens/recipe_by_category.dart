import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/category_page.dart';
import '../screens/recipe_page.dart';
import '../data/recipe_data.dart';
import '../model/recipe.dart';

class RecipeByCategory extends StatelessWidget {
  const RecipeByCategory({required this.category, super.key});
  final String category;

  @override
  Widget build(BuildContext context) {
    // filter by category
    final List<Recipe> filteredRecipes = recipes.where((recipe) {
      return recipe.categories.any((c) => c.name == category);
    }).toList();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: 
            Text(
              category,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCategory()),
              );
            }, 
            icon: const Icon(CupertinoIcons.list_bullet),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.6,
          ), 
          itemCount: filteredRecipes.length,
          itemBuilder: (context, index) {
            final recipe = filteredRecipes[index];
              return RecipeCard(
                image: recipe.images.isNotEmpty ? recipe.images[0] : '', 
                title: recipe.title, 
                recipe: recipe, 
                time: recipe.readyInTime
              ); 
          }
        ),
      )
    );
  }
}

