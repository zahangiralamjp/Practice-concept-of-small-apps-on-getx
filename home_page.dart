import 'package:flutter/material.dart';
import 'package:flutter_application_3/favorite_recipes.dart';
import 'package:flutter_application_3/recipe_controller.dart';
import 'package:get/get.dart';
import 'recipe_list.dart';

class HomePage extends StatelessWidget {
  final RecipeController recipeController = Get.put(RecipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Recipes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Get.to(() => FavoriteRecipes());
            },
          ),
        ],
      ),
      body: RecipeList(),
    );
  }
}
