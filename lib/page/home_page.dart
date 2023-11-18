import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetas_app/models/recipe_model.dart';
import 'package:recetas_app/page/recipe_page.dart';
import 'package:recetas_app/widgets/recipe_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController ingredientsController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recipes = [
      bandejaPaisa,
      RecipeModel(
          title: 'Lomo Saltado',
          description:
              "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
          url:
              'https://www.wednesdaynightcafe.com/wp-content/uploads/2017/09/lomo-saltado-beef-french-fry-stir-fry.jpg',
          ingredients:
              "Mis ingredientes del lomo saltado. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
    ];
  }

  RecipeModel bandejaPaisa = RecipeModel(
      title: 'Bandeja paisa',
      description:
          "La Bandeja Paisa es probablemente el plato más popular de Colombia, es originario de la región andina del país, donde a las personas se les llama 'Paisas' y la zona donde nací y crecí.",
      url:
          'https://images.pexels.com/photos/8696567/pexels-photo-8696567.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      ingredients:
          "Mis ingredientes de la bandeja paisa. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.");

  List<RecipeModel> recipes = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mis Recetas",
            style: GoogleFonts.roboto(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  controller: titleController,
                  decoration: InputDecoration(
                    hoverColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(0),
                    hintText: "Ingrese el nombre de la receta",
                    focusColor: Colors.amber,
                    prefixIcon: Icon(Icons.title),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hoverColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(0),
                    hintText: "Ingrese la descripción de la receta",
                    focusColor: Colors.amber,
                    prefixIcon: Icon(Icons.description),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  controller: urlImageController,
                  decoration: InputDecoration(
                    hoverColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(0),
                    hintText: "Ingrese el url de la imagen",
                    focusColor: Colors.amber,
                    prefixIcon: Icon(Icons.image),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  controller: ingredientsController,
                  decoration: InputDecoration(
                    hoverColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(0),
                    hintText: "Ingrese los ingredientes",
                    focusColor: Colors.amber,
                    prefixIcon: Icon(Icons.list),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (titleController.text.isEmpty &&
                        descriptionController.text.isEmpty &&
                        urlImageController.text.isEmpty &&
                        ingredientsController.text.isEmpty) {
                      RecipeModel _recipe = RecipeModel(
                          title: titleController.text,
                          description: descriptionController.text,
                          url: urlImageController.text,
                          ingredients: ingredientsController.text);
                      recipes.add(_recipe);

                      titleController.clear();
                      descriptionController.clear();
                      urlImageController.clear();
                      ingredientsController.clear();
                      setState(() {});
                    }
                  },
                  child: Text("Agregar"),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecipePage(
                                          recipe: recipes[index],
                                        )));
                          },
                          child: RecipeItem(recipeModel: recipes[index]));
                    },
                    itemCount: recipes.length,
                  ),
                ),
                // ...recipes
                //     .map(
                //       (RecipeModel receta) => RecipeItem(
                //         recipeModel: receta,
                //       ),
                //     )
                //     .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
