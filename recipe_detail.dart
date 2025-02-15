import 'package:flutter/material.dart';
import 'package:flutter_application_3/recipe_model.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  RecipeDetail({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(recipe.imageUrl),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category: ${recipe.category}'),
                  Text('Time: ${recipe.time} mins'),
                  Text('Rating: ${recipe.rating} ⭐'),
                ],
              ),
              Text('desc: ${recipe.desc} '),
            ],
          ),
        ),
      ),
    );
  }
}
