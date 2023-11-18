import 'package:flutter/material.dart';
import 'package:recetas_app/models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  RecipeModel recipe;
  RecipePage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(recipe.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      recipe.url,
                      height: 300.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(16.0),
                  decoration:
                      BoxDecoration(color: Colors.grey.shade200, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(5, 5),
                        blurRadius: 8)
                  ]),
                  child: Column(
                    children: [
                      Text(
                        "Description: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 18),
                      ),
                      Text(recipe.description),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(16.0),
                  decoration:
                      BoxDecoration(color: Colors.grey.shade200, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(5, 5),
                        blurRadius: 8)
                  ]),
                  child: Column(
                    children: [
                      Text(
                        "Ingredientes: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 18),
                      ),
                      Text(recipe.ingredients),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
