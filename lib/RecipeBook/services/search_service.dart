import '../model/recipe.dart';
class SearchService {
  // Function to filter recipes based on the search query (search by ingredients)
  static List<Recipe> filterRecipesByIngredients(List<Recipe> recipes, String searchQuery) {
    if (searchQuery.isEmpty) return recipes;

    // Filter recipes by checking if any ingredient contains the search query
    return recipes.where((recipe) {
      return recipe.ingredients.any((ingredient) {
        return ingredient.description.toLowerCase().contains(searchQuery.toLowerCase());
      });
    }).toList();
  }
  static List<Recipe> filterRecipesByTitle(List<Recipe> recipes, String searchQuery) {
    if (searchQuery.isEmpty) return recipes;

    return recipes.where((recipe) {
      return recipe.title.toLowerCase().contains(searchQuery);
    }).toList();
  }

   static List<Recipe> filterRecipesByTitleAndIngredients(List<Recipe> recipes, String searchQuery) {
    if (searchQuery.isEmpty) return recipes;

    return recipes.where((recipe) {
      final matchesTitle = recipe.title.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesIngredients = recipe.ingredients.any((ingredient) {
        return ingredient.description.toLowerCase().contains(searchQuery.toLowerCase());
      });
      return matchesTitle || matchesIngredients;
    }).toList();
  }
}