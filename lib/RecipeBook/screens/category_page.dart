
import 'package:flutter/material.dart';
import '../data/recipe_data.dart';
import '../screens/recipe_by_category.dart';
import '../model/recipe.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Row(
          children: [
            SizedBox(width: 5,),
            Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
          ],
        ),
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
          itemCount: RecipeCategory.values.length,
          itemBuilder: (context, index) {
            final category = RecipeCategory.values[index];
            final categoryRecipes = recipes.where((recipe) => recipe.categories == category).toList();
            return CategoryCard(
              image: category.imagePath, 
              categoryTitle: category.name, 
              recipeCount: categoryRecipes.length,
              category: category,
            );
          }
        ),
      )
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.image, required this.categoryTitle, required this.recipeCount, required this.category, super.key});

  final String image;
  final String categoryTitle;
  final int recipeCount;
  final RecipeCategory category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeByCategory(category: categoryTitle),
          ),
        );    
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.circular(5), 
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 3),
              blurRadius: 5,
            )
          ], 
        ),       
        child: Column( 
          children: [
            Image(
              image: AssetImage(image),               
            ),
            const SizedBox(height: 32),
            Column(
                children: [
                  Text(
                    categoryTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF8D0B41),  
                    ),
                    textAlign: TextAlign.center,  
                  ),          
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                      child: Text(
                        '$recipeCount recipes',
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                        ), 
                      ),
                    ),
                  ),
                ]
              ),
            ],
          ), 
        ), 
    );
  }
}

