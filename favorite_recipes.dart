import 'package:flutter/material.dart';
import 'package:flutter_application_3/recipe_controller.dart';
import 'package:get/get.dart';
import 'recipe_detail.dart';

class FavoriteRecipes extends StatelessWidget {
  final RecipeController _recipeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Recipes'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: _recipeController.recipes.length,
            itemBuilder: (context, index) {
              final recipe = _recipeController.recipes[index];
              if (recipe.isFavorite) {
                return ListTile(
                  leading: Image.network(recipe.imageUrl),
                  title: Text(recipe.name),
                  subtitle: Text('${recipe.time} mins | ${recipe.rating} ⭐'),
                  onTap: () {
                    Get.to(() => RecipeDetail(recipe: recipe));
                  },
                );
              } else {
                return Container();
              }
            },
          )),
    );
  }
}
