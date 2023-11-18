import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetas_app/page/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.arimaTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
    ),
  );
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Prueba Screen"),
        ),
        body: Column(
          children: [
            Text("Los containers son: "),
            Expanded(
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                //width: double.infinity,
                child: ListView.builder(
                    //scroll horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        height: 200,
                        width: 300,
                        color: Colors.red,
                        child: Center(child: Text(index.toString())),
                      );
                    }),
              ),
            ),
            Text("Mas hijos"),
            Text("Mas hijos"),
            Text("Mas hijos"),
          ],
        ),
        // body: ListView(children: [
        //   Container(
        //     height: 200,
        //     width: 300,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     height: 200,
        //     width: 300,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     height: 200,
        //     width: 300,
        //     color: Colors.black,
        //   ),
        //   Container(
        //     height: 200,
        //     width: 300,
        //     color: Colors.pink,
        //   ),
        //   Container(
        //     height: 200,
        //     width: 300,
        //     color: Colors.amber,
        //   ),
        // ]),
      ),
    );
  }
}
