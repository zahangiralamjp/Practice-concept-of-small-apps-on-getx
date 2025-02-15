import 'package:flutter/material.dart';
import 'package:flutter_application_3/recipe_controller.dart';
import 'package:get/get.dart';
import 'recipe_detail.dart';

class RecipeList extends StatelessWidget {
  final RecipeController _recipeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: _recipeController.recipes.length,
          itemBuilder: (context, index) {
            final recipe = _recipeController.recipes[index];
            return ListTile(
              leading: Image.network(recipe.imageUrl),
              title: Text(recipe.name),
              subtitle: Text('${recipe.time} mins | ${recipe.rating} ⭐'),
              trailing: IconButton(
                icon: Icon(
                  recipe.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: recipe.isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  _recipeController.toggleFavorite(recipe.id);
                },
              ),
              onTap: () {
                Get.to(() => RecipeDetail(recipe: recipe));
              },
            );
          },
        ));
  }
}
