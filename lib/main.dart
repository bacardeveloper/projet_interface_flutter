// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: singleScroll_view(),
      backgroundColor: HexColor("#EC7063"),
    );
  }

  // singlescrollview
  Widget singleScroll_view() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          espace_hauteur(24),
          appBar_top_view(),
          espace_hauteur(20),
          border_radius_card(),
          espace_hauteur(20),
          groupe_bottom(),
        ],
      ),
    );
  }

  // expanded deuxieme
  Widget groupe_bottom() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    nos_services_text(),
                    grid_element(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget nos_services_text() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Nos services",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
              color: HexColor("#D98880"),
            ),
          ),
        )
      ],
    );
  }

  Widget grid_element() {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }

  // espace_hauteur
  Widget espace_hauteur(double hauteur) {
    return Container(
      height: hauteur,
    );
  }

  // espace largeur
  Widget espace_largeur(double largeur) {
    return Container(
      width: largeur,
    );
  }

  // border radius card
  Widget border_radius_card() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // radius of 10
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              espace_hauteur(10),
              Row(
                children: [
                  espace_largeur(10),
                  Text(
                    "Tiroww",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: HexColor("#00D3D3"),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  // appbar_top
  Widget appBar_top_view() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 65,
      child: Container(
        child: composant_app_bar(),
      ),
    );
  }

  Widget composant_app_bar() {
    return Row(
      children: [
        image_radius(),
        container_texte_app_bar(),
      ],
    );
  }

  Widget image_radius() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset('assets_img/photo_profile.jpg'),
    );
  }

  Widget container_texte_app_bar() {
    return Expanded(
      child: SizedBox(
        height: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BIENVENU BACAR DARWIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: HexColor("#FDFEFE"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "c'est la hess morray",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //
}
