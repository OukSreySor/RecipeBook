
import '../model/recipe.dart';

List<Recipe> recipes = [
  Recipe(
    title: "Pancakes",
    categories: [RecipeCategory.BREAKFAST, RecipeCategory.SNACK],
    ingredients : [
      Ingredient(
        baseQuantity: 1.0, 
        description: "cup flour", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 1.0,
        description: "tbsp sugar",
        multipliers: [1, 1, 1, 1], 
      ),
      Ingredient(
        baseQuantity: 1.0,
        description: "tsp baking powder",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1.0,
        description: "egg",
        multipliers: [1, 1.5, 2, 2.5, 3], 
      ),
      Ingredient(
        baseQuantity: 0.75,
        description: "cup of milk",
        multipliers: [1, 1.5, 2, 2.5, 3], 
      ),
    ], 
    ingredientImage: [
      "assets/ingredients/flour.jpg",
      "assets/ingredients/sugar.jpg",
      "assets/ingredients/baking_soda.jpg",
      "assets/ingredients/egg.jpg",
      "assets/ingredients/milk.jpg",
    ],
    steps: ["Mix ingredients.", "Heat pan.", "Pour batter and cook."],
    images: [
      "assets/Pancake/pk.png",
      "assets/Pancake/pk1.jpg",
      "assets/Pancake/pk2.jpg",
      "assets/Pancake/pk3.jpg",
      "assets/Pancake/pk4.jpg",
      "assets/Pancake/pk5.jpg",
    ],
    readyInTime: '20 min'
  ),
  Recipe(
    title: "Spaghetti",
    categories: [RecipeCategory.LUNCH, RecipeCategory.DINNER],
    ingredients : [
      Ingredient(
        baseQuantity: 200, 
        description: "g spaghetti", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 1.0,
        description: "cup tomato sauce",
        multipliers: [1, 1, 1, 1], 
      ),
      Ingredient(
        baseQuantity: 2.0,
        description: "cloves garlic",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/spagetti.jpg",
      "assets/ingredients/tomato_sauce.jpg",
      "assets/ingredients/garlic.jpg",
      
    ],
    steps: ["Boil pasta.", "Prepare sauce.", "Mix and serve."],
    images: [
      "assets/Spaghetti/spg.png",
      "assets/Spaghetti/spg1.jpg",
      "assets/Spaghetti/spg2.jpg",
      "assets/Spaghetti/spg3.jpg",
      "assets/Spaghetti/spg4.jpg",

    ],
    readyInTime: '1 hr',
  ),
  Recipe(
    title: "Hot Basil Chicken",
    categories: [RecipeCategory.LUNCH, RecipeCategory.DINNER],
    ingredients : [
      Ingredient(
        baseQuantity: 500, 
        description: "g chicken thighs", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "bunch basil leaves",
        multipliers: [1, 1, 1, 1], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "handful peanuts",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 4,
        description: "hot chili pepers",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs chopped garlic",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs fish sause",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs oyster sause",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs black sweet soy sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tbs cooking oil",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 150,
        description: "ml water",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/chicken.jpg",
      "assets/ingredients/basil-leaves.jpg",
      "assets/ingredients/peanuts.jpg",
      "assets/ingredients/chilli.jpg",
      "assets/ingredients/garlic.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/oyster-sauce.jpg",
      "assets/ingredients/black-soy-sauce.jpg",
      "assets/ingredients/cooking-oil.jpg",
      "assets/ingredients/water.jpg",    
    ],
    steps: ["Add cooking oil to a wok and head.", "Add garlic, chicken ,chillies, fish sauce and water; cook for 10 minute.", "Add peanuts oyster & sweet soy sauce and basil", "Stir and cook until basil is slightly wilted."],
    images: [
      "assets/HotBasilChicken/hbc.png",
      "assets/HotBasilChicken/hbc1.jpg",
      "assets/HotBasilChicken/hbc2.jpg",
      "assets/HotBasilChicken/hbc3.jpg",
    ],
    readyInTime: '30 min'
  ),
  Recipe(
    title: "Fish Amok",
    categories: [RecipeCategory.LUNCH],
    ingredients : [
      Ingredient(
        baseQuantity: 500, 
        description: "g white fish fillets", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 2,
        description: "cups coconut milk",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs fish sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs salt",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs sugar",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "kaffir lime leaves, finely sliced ",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "egg",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: " Kroeung paste (lemongrass, galangal, turmeric, garlic, shallots)",
        multipliers: [1, 1, 1, 1], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/fish-fillet.jpg",
      "assets/ingredients/coconut-milk.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/salt.jpg",
      "assets/ingredients/sugar.jpg",
      "assets/ingredients/kiffir-lime-leaves.jpg",
      "assets/ingredients/egg.jpg",
      "assets/ingredients/kroeung.png",
      
    ],
    steps: [
      "Prepare the kroeung paste by blending the lemongrass, galangal, turmeric, garlic, and shallots into a smooth paste.", 
      "In a bowl, combine fish fillets with kroeung paste, coconut milk, fish sauce, sugar, kaffir lime leaves, and egg.", 
      "Season with salt.",
      "Spoon the mixture into banana leaf cups.",
      "Steam for about 20 minutes until the curry is firm and fragrant.",

    ],
    images: [
      "assets/Amok/amok.png",
      "assets/Amok/amok1.jpg",
      "assets/Amok/amok2.jpg",
      "assets/Amok/amok3.jpg",
      "assets/Amok/amok4.jpg",
      "assets/Amok/amok5.jpg",

    ],
    readyInTime: '1 hr 15 min',
  ),
  Recipe(
    title: "Beef Lok Lak",
    categories: [RecipeCategory.LUNCH, RecipeCategory.DINNER],
    ingredients : [
      Ingredient(
        baseQuantity: 500, 
        description: "g beef sirloin", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 3,
        description: "tbs oyster sauce",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tbs soy sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "cloves garlic",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 5,
        description: "tbs cooking oil",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 300,
        description: "g lettuce for serving",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 300,
        description: "g tomato for serving",
        multipliers: [1, 2, 1, 2], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/beef.jpg",
      "assets/ingredients/oyster-sauce.jpg",
      "assets/ingredients/soy-sauce.jpg",
      "assets/ingredients/garlic.jpg",
      "assets/ingredients/cooking-oil.jpg",
      "assets/ingredients/lettuce.jpg",
      "assets/ingredients/tomato.jpg",
      
    ],
    steps: [
      "Marinate beef with oyster sauce, soy sauce, sugar, garlic, and black pepper for 30 minutes.", 
      "Heat oil in a pan and stir-fry the beef until cooked to your preference.", 
      "Serve the beef on a bed of lettuce and tomato slices.",
      
    ],
    images: [
      "assets/BeefLokLak/loklak.png",
      "assets/BeefLokLak/loklak1.jpg",
      "assets/BeefLokLak/loklak2.jpg",
      "assets/BeefLokLak/loklak3.jpg",
      "assets/BeefLokLak/loklak4.jpg",
    ],
    readyInTime: '45 min'
  ),
  Recipe(
    title: "Khmer Red Curry",
    categories: [RecipeCategory.DINNER, RecipeCategory.LUNCH],
    ingredients : [
      Ingredient(
        baseQuantity: 500, 
        description: "g chicken, beef, or fish", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 2,
        description: "cups coconut milk",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "diced potato",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "sliced carrot",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 0.5,
        description: "cup green beans",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 0.5,
        description: "eggplant",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs fish sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs sugar",
        multipliers: [1, 1, 1, 1], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/chicken.jpg",
      "assets/ingredients/coconut-milk.jpg",
      "assets/ingredients/potato.jpg",
      "assets/ingredients/carrot.jpg",
      "assets/ingredients/green-bean.jpg",
      "assets/ingredients/eggplant.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/sugar.jpg",
      
    ],
    steps: [
      "In a pot, heat a tablespoon of oil and fry the red curry paste until fragrant.", 
      "Add the protein and cook until browned.", 
      "Pour in coconut milk, bring to a simmer, and add vegetables.",
      "Cook until the vegetables are tender.",
      "Season with fish sauce and sugar.",
    ],
    images: [
      "assets/KhmerRedCurry/krc.png",
      "assets/KhmerRedCurry/krc1.jpg",
      "assets/KhmerRedCurry/krc2.jpg",
      "assets/KhmerRedCurry/krc3.jpg",

    ],
    readyInTime: '1 hr 15 min'
  ),
  Recipe(
    title: "Num Banh Chok (Khmer Noodles)",
    categories: [RecipeCategory.DINNER],
    ingredients : [
      Ingredient(
        baseQuantity: 400, 
        description: "g rice noodles", 
        multipliers: [1, 1, 2, 2, 3]
      ),
      Ingredient(
        baseQuantity: 200,
        description: "g fish fillet",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "cups coconut milk",
        multipliers: [1, 1, 1.5, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "kroeung paste",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "assorted vegetables (cucumber, banana blossom, bean sprouts)",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "g mint leaves ",
        multipliers: [1, 1, 2, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "g basil leaves",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/rice-noodle.png",
      "assets/ingredients/fish-fillet.jpg",
      "assets/ingredients/coconut-milk.jpg",
      "assets/ingredients/kroeung.png",
      "assets/ingredients/mix-veg.png",
      "assets/ingredients/mint-leave.jpg",
      "assets/ingredients/basil-leaves.jpg",
      
    ],
    steps: [
      "Blend lemongrass, turmeric, and garlic to make kroeung paste.", 
      "Simmer fish in water until cooked, then remove and flake.", 
      "Fry the kroeung paste, add coconut milk, and the flaked fish.",
      "Prepare rice noodles according to the package instructions.",
      "Place noodles in bowls, pour the fish gravy over, and top with fresh vegetables.",

    ],
    images: [
      "assets/NumBanhChok/nbc.png",
      "assets/NumBanhChok/nbc1.jpg",
      "assets/NumBanhChok/nbc2.jpg",
      "assets/NumBanhChok/nbc3.jpg",
    ],
    readyInTime: '1 hr 20 min'
  ),
  Recipe(
    title: "Bok Lahong (Papaya Salad)",
    categories: [RecipeCategory.SNACK],
    ingredients : [
      Ingredient(
        baseQuantity: 1, 
        description: "green papaya, shredded", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "carrot, shredded",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tomatoes, cut into wedges",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tbs fish sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tbs lime juice",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs sugar",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "cloves garlic",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "red chillies",
        multipliers: [1, 2, 3, 1], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "handful peanuts",
        multipliers: [1, 2, 3, 1], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/papaya.jpg",
      "assets/ingredients/carrot.jpg",
      "assets/ingredients/tomato.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/lime.jpg",
      "assets/ingredients/sugar.jpg",
      "assets/ingredients/garlic.jpg",
      "assets/ingredients/chilli.jpg",
      "assets/ingredients/peanuts.jpg",      
    ],
    steps: [
      "Combine the fish sauce, lime juice, sugar, garlic, and chilies in a bowl.", 
      "Mix in the shredded papaya, carrot, and tomato wedges.", 
      "Toss everything together until well combined.",

    ],
    images: [
      "assets/PapayaSalad/pps.png",
      "assets/PapayaSalad/pps1.jpg",
      "assets/PapayaSalad/pps2.jpg",
      "assets/PapayaSalad/pps3.jpg",
      "assets/PapayaSalad/pps4.jpg",
      "assets/PapayaSalad/pps5.jpg",

    ],
    readyInTime: '50 min'
  ),
  Recipe(
    title: "Samlor Machu",
    categories: [RecipeCategory.DINNER, RecipeCategory.LUNCH],
    ingredients : [
      Ingredient(
        baseQuantity: 200, 
        description: "g fish fillets", 
        multipliers: [1, 1.5, 2, 2.5, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "liter water or fish stock",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 0.5,
        description: "cup tamarind juice",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "cup pineapple chunks",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tomatoes",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs fish sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "sugar",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/fish-fillet.jpg",
      "assets/ingredients/water.jpg",
      "assets/ingredients/tamarind.jpg",
      "assets/ingredients/pineapple.jpg",
      "assets/ingredients/tomato.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/sugar.jpg",
      
    ],
    steps: [
      "Bring water or fish stock to a boil and add the fish fillets.", 
      "Once the fish is cooked, add tamarind juice, pineapple, and tomatoes.", 
      "Season the soup with fish sauce and sugar, and simmer for a few minutes.",
      
    ],
    images: [
      "assets/ingredients/somlor-machu.png",

    ],
    readyInTime: '30 min'
  ),
  Recipe(
    title: "Poat Dot - Cambodian Grilled Corn",
    categories: [RecipeCategory.SNACK],
    ingredients : [
      Ingredient(
        baseQuantity: 2, 
        description: "ears corn, husks and silk removed", 
        multipliers: [2, 1, 2, 1, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs vegetable oil",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 1.5,
        description: "tbs fish sauce",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs water",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs sugar",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 0.5,
        description: "tbs salt",
        multipliers: [1, 1, 2, 1], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "green onions, white parts only, thinly sliced",
        multipliers: [1, 1, 2, 2], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/corn.jpg",
      "assets/ingredients/cooking-oil.jpg",
      "assets/ingredients/fish-sauce.jpg",
      "assets/ingredients/water.jpg",
      "assets/ingredients/sugar.jpg",
      "assets/ingredients/salt.jpg",
      "assets/ingredients/green-onions.jpg",
      
    ],
    steps: [
      "Prepare charcoal grill or preheat an ungreased cast-iron skillet over medium heat.", 
      "Very lightly brush the corn with oil and set on the grill rack or in the skillet.", 
      "Cook, turning every 2-3 minutes, until the kernels are tender and nicely charred, 12-15 minutes total; keep warm.",
      "Meanwhile, in a bowl stir together the fish sauce, water, sugar and salt until it is dissolved.",
      "Heat the 2 tbsp oil in a saucepan over medium heat until very hot but not smoking.",
      "Carefully pour liquid mixture in (it may sputter a bit so watch out); add the green onions and simmer until the sauce begins to thicken, about 30 seconds; remove from heat and cool.",
      "Brush cooked corn with the sauce and serve."
    ],
    images: [
      "assets/PoatDot/pd.png",
      "assets/PoatDot/pd1.jpg",
      "assets/PoatDot/pd2.jpg",
      "assets/PoatDot/pd3.jpg",
      "assets/PoatDot/pd4.jpg",
    ],
    readyInTime: '20 min'
  ),
  Recipe(
    title: "Brownies",
    categories: [RecipeCategory.DESSERT, RecipeCategory.SNACK],
    ingredients : [
      Ingredient(
        baseQuantity: 0.5, 
        description: "cup butter", 
        multipliers: [2, 1, 2, 1, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "cup white sugar",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "eggs",
        multipliers: [1, 1, 2, 3], 
      ),
      Ingredient(
        baseQuantity: 0.3,
        description: "tbs vanilla extract",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 0.5,
        description: "cup unsweetened cocoa powder",
        multipliers: [1, 1, 1.25, 1.5], 
      ),
      Ingredient(
        baseQuantity: 0.2,
        description: "tbs salt",
        multipliers: [1, 1, 2, 1], 
      ),
      Ingredient(
        baseQuantity: 0.2,
        description: "tbs baking powder",
        multipliers: [1, 1, 2, 2], 
      ),
      
    ], 
    ingredientImage: [
      "assets/ingredients/butter.jpg",
      "assets/ingredients/sugar.jpg",
      "assets/ingredients/egg.jpg",
      "assets/ingredients/vanilla.jpg",
      "assets/ingredients/cocoa-powder.jpg",
      "assets/ingredients/salt.jpg",
      "assets/ingredients/baking-powder.jpg",
      
    ],
    steps: [
      "Preheat the oven to 350 degrees F (175 degrees C). Grease and flour an 8-inch square pan. ", 
      "Melt 1/2 cup butter in a large saucepan. Remove from heat, and stir in sugar, eggs, and 1 teaspoon vanilla. Beat in 1/3 cup cocoa, flour, salt, and baking powder. Spread batter into prepared pan.", 
      "Bake in the preheated oven until top is dry and edges have started to pull away from the sides of the pan, about 25 to 30 minutes. Let cool briefly before frosting.",
      "To make the frosting: Combine softened butter, confectioners' sugar, 3 tablespoons cocoa, honey, and 1 teaspoon vanilla extract in a bowl. Stir until smooth. Frost brownies while they are still warm.",
    ],
    images: [
      "assets/Brownies/bn1.png",
      "assets/Brownies/bn2.jpg",
      "assets/Brownies/bn3.jpg",
      "assets/Brownies/bn4.jpg",
      "assets/Brownies/bn5.jpg",
    ],
    readyInTime: '45 min',
  ),
  Recipe(
    title: "Dreamy Nighttime Drink",
    categories: [RecipeCategory.DRINK],
    ingredients : [
      Ingredient(
        baseQuantity: 1, 
        description: "cup milk", 
        multipliers: [2, 1, 2, 1, 3]
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs honey",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "drops vanilla extract",
        multipliers: [1, 1, 2, 3], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "pinch ground cinnamon",
        multipliers: [1, 1, 2, 2], 
      ),
      
      
    ], 
    ingredientImage: [
      "assets/ingredients/milk.jpg",
      "assets/ingredients/honey.jpg",
      "assets/ingredients/vanilla.jpg",
      "assets/ingredients/cinnamon.jpg",
      
    ],
    steps: [
      "Gather all ingredients.", 
      "Pour milk into a microwave-safe mug. Cook on high until milk is very hot and begins to foam, about 3 minutes.", 
      "Stir in honey and vanilla, then sprinkle with cinnamon before serving.",
      "To make the frosting: Combine softened butter, confectioners' sugar, 3 tablespoons cocoa, honey, and 1 teaspoon vanilla extract in a bowl. Stir until smooth. Frost brownies while they are still warm.",
    ],
    images: [
      "assets/Drink/nd1.webp",
      "assets/Drink/nd2.jpg",
      "assets/Drink/nd3.jpg",
      "assets/Drink/nd4.jpg",
    ],
    readyInTime: '5 min',
  ),
  Recipe(
    title: "Veggie Mayo Sandwich",
    categories: [RecipeCategory.BREAKFAST, RecipeCategory.SNACK],
    ingredients : [
      Ingredient(
        baseQuantity: 3, 
        description: "slices of bread", 
        multipliers: [2, 1, 2, 1, 3]
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tablespoon mayonaise",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tomato",
        multipliers: [1, 1, 2, 3], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "slices cheddar cheese",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 3-5,
        description: "ham slices",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "slices cooked bacon",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "lettuce leaves ",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs salt",
        multipliers: [1, 1, 2, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "tbs black pepper",
        multipliers: [1, 1, 2, 2], 
      ),
      
      
    ], 
    ingredientImage: [
      "assets/ingredients/bread1.jpg",
      "assets/ingredients/mayo.jpg",
      "assets/ingredients/tomato.jpg",
      "assets/ingredients/cheese.jpg",
      "assets/ingredients/ham.jpg",
      "assets/ingredients/cook-bacon.jpg",
      "assets/ingredients/lettuce.jpg",
      "assets/ingredients/salt.jpg",
      "assets/ingredients/black-pepper.jpg",
      
      
    ],
    steps: [
      "Spread 1 tbsp of mayonnaise on one side of each slice of bread. Arrange 3 slices down on your cutting board with mayo side up. Top one slice with half of ham, tomato slices, and a slice of cheddar cheese.", 
      "Place a slice of bread with mayo side down over the first slice with cheddar cheese. Top the second slice with 2 slices bacon and 2 lettuce leaves. Season with salt and pepper and place the last slice of bread over the lettuce with mayo side down.", 
      "Cut the sandwich in half or quarters and serve with your favorite side.",
    ],
    images: [
      "assets/Sandwich/sw.png",
      "assets/Sandwich/sw1.jpg",
      "assets/Sandwich/sw2.jpg",
      "assets/Sandwich/sw3.jpg",
    ],
    readyInTime: '10 min',
  ),
    Recipe(
    title: "Apple-Mango Smoothie",
    categories: [RecipeCategory.DRINK, RecipeCategory.BREAKFAST],
    ingredients : [
      Ingredient(
        baseQuantity: 1, 
        description: "apple", 
        multipliers: [2, 1, 2, 1, 3]
      ),
      Ingredient(
        baseQuantity: 2,
        description: "mangoes",
        multipliers: [1, 2, 1, 2], 
      ),
      Ingredient(
        baseQuantity: 1,
        description: "cup milk",
        multipliers: [1, 1, 2, 3], 
      ),
      Ingredient(
        baseQuantity: 2,
        description: "tbs honey",
        multipliers: [1, 1, 2, 2], 
      ),
      
      
    ], 
    ingredientImage: [
      "assets/ingredients/apple.jpg",
      "assets/ingredients/mango.jpg",
      "assets/ingredients/milk.jpg",
      "assets/ingredients/honey.jpg",
      
    ],
    steps: [
      "Add the mangoes, apples, milk and honey to a blender. Blend until smooth. ", 
      "Serve.", 
    ],
    images: [
      "assets/Drink/ap-man.png",
      "assets/Drink/ap-man1.jpg",
      "assets/Drink/ap-man2.jpg",
    ],
    readyInTime: '3 min',
  ),
  
  
 ];