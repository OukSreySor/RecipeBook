
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/recipe_data.dart';
import '../screens/recipe_detail_page.dart';
import '../model/recipe.dart';
import '../services/search_service.dart';
import 'category_page.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;  
  String _searchQuery = '';

  List<Recipe> _filterRecipe() {
    if (_searchQuery.isEmpty) {
      return recipes;
    }
    return SearchService.filterRecipesByTitleAndIngredients(recipes, _searchQuery);
  }
  

  @override
  Widget build(BuildContext context) {
    final Map<RecipeCategory, List<Recipe>> categorizedRecipes = {};
    for (var recipe in _filterRecipe()) {
      for (var category in recipe.categories) {
        if (!categorizedRecipes.containsKey(category)) {
        categorizedRecipes[category] = [];
      }
      categorizedRecipes[category]?.add(recipe);
      }  
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: _isSearching
          ? TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search for a recipe or ingredients...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            onChanged: (query) {
              setState(() {
                _searchQuery = query;
              });
            },
          )
        :Row(
          children:[ 
            Image.asset(
              'assets/images/homepage-logo.png', 
              scale: 14, 
            ),
            const SizedBox(width: 5,),
            const Text(
              'COOK MASTER',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
          ]
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (_isSearching) {
                  _searchController.clear();
                  _searchQuery = '';
                }
                _isSearching = !_isSearching;
              });
            }, 
            icon: const Icon(CupertinoIcons.search),
          ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var category in RecipeCategory.values) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF133E87),
                  ), 
                ), 
              ),
              Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: const Offset(3,3),
                  )
                ]
              ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorizedRecipes[category]?.length ?? 0,
                  itemBuilder: (context, index) {
                    final recipe = categorizedRecipes[category]![index];
                    return RecipeCard(
                      image: recipe.images.isNotEmpty ? recipe.images[0] : '',
                      title: recipe.title,
                      time: recipe.readyInTime,
                      recipe: recipe,
                    );
                  }
                ),
              )
            ]
          ],
        ),
      )
    );
  }
}


class RecipeCard extends StatelessWidget {
  const RecipeCard({required this.image, required this.title, required this.recipe, required this.time, super.key});
  final String image;
  final String title;
  final Recipe recipe;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailPage(recipe: recipe),
          ),
        );
      },
      child: Container(
      width: 250,  
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,  
        children: [
          Container(
            height: 200,  
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5), 
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(3, 3),
                  blurRadius: 5,
                )
              ], 
              image: DecorationImage(
                image: AssetImage(image), 
                fit: BoxFit.contain,  
              ),
            ),
          ),  
          const SizedBox(height: 16,),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1B1833),  
            ),
            textAlign: TextAlign.center,  
          ),
          const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2 ),
                borderRadius: BorderRadius.circular(30), 
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.access_time, color: Color(0xFF213555)),
                      const SizedBox(width: 6,),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.w800,                
                        ),
                        textAlign: TextAlign.center,  
                      ),
                    ],
                  ),
                ),
          )
        ],
      ),
    )
    );
  }
}
