import 'package:flutter/material.dart';
import '../model/recipe.dart';

class RecipeDetailPage extends StatefulWidget {

  const RecipeDetailPage({required this.recipe ,super.key});
  final Recipe recipe;

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  
  int clickCount = 1; 
  int imgIndex = 0;
  
  // Update ingredient quantity
  void updateIngredientQuantity(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        clickCount++;
      } else {
        clickCount--;
        if (clickCount <= 0) clickCount = 1; 
      }

      // Update each ingredient 
      for (var ingredient in widget.recipe.ingredients) {
        ingredient.updateQuantity(clickCount);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          widget.recipe.title,
          style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ), 
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
               height: 300,
               child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.recipe.images.length,
                itemBuilder: (context, index){
                  return Card(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ), 
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            widget.recipe.images[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                  );               
                }
              ),
             ),          
            const SizedBox(height: 32),
            const Center(
              child: Text(
                    'Ingredients:',
                     style: TextStyle(
                      color: Color(0xFF133E87), 
                      fontSize: 28, fontWeight: FontWeight.bold
                     ),
              ),
            ), 
            const SizedBox(height: 32),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.black, width: 1), // Outer border
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove, color: Color(0xFFE195AB),),
                    onPressed: () => updateIngredientQuantity(false),
                  ),
                  Expanded(
                   child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 1), 
                            right: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                        child: Text(
                          '$clickCount people',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF441752)),
                        ),
                      ),
                  ),             
                  IconButton(
                    icon: const Icon(Icons.add, color: Color(0xFFA5B68D)),
                    onPressed: () => updateIngredientQuantity(true),
                  ),   
                ],
              ),
            ),           
            const SizedBox(height: 28),           
            GridView.count(
              shrinkWrap: true, // Shrinks the grid to fit its content
              crossAxisCount: 3, 
              crossAxisSpacing: 10, 
              mainAxisSpacing: 10, 
              childAspectRatio: 0.8, 
              children: List.generate(widget.recipe.ingredients.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: const Offset(3,3),
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [                     
                          Image.asset(
                            widget.recipe.ingredientImage[index],
                            fit: BoxFit.contain,
                            width: 60, 
                            height: 60, 
                          ),
                          const SizedBox(height: 28),
                        Text(
                          widget.recipe.ingredients[index].getDisplayText(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ), 
          const SizedBox(height: 32,),
          const Center(child: Text('Instructions:', style: TextStyle(color: Color(0xFF133E87),fontSize: 28, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)),
          const SizedBox(height: 16),
          for (int i = 0; i < widget.recipe.steps.length; i ++ ) 
            Center(
              child: Text(
                '${i+1}. ${widget.recipe.steps[i]}',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),        
          ],  
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}