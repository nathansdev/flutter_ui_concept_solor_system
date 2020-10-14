import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_concept_solar_system/data/category.dart';
import 'package:flutter_ui_concept_solar_system/data/planet.dart';
import 'package:flutter_ui_concept_solar_system/screens/detail.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_appbar.dart';
import 'package:flutter_ui_concept_solar_system/widgets/search_box.dart';

import '../colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  List<Category> categories = [];
  List<Planet> planets = [];

  @override
  void initState() {
    super.initState();
    categories.add(Category(
        iconPath: "assets/icons/planet.svg",
        title: "Planetas",
        colorOne: electric_violet,
        colorTwo: victoria));
    categories.add(Category(
        iconPath: "assets/icons/astroid.svg",
        title: "Asteróides",
        colorOne: hot_pink,
        colorTwo: wild_strawberry));
    categories.add(Category(
        iconPath: "assets/icons/star.svg",
        title: "Estrelas",
        colorOne: robin_blue,
        colorTwo: cerulean));
    categories.add(Category(
        iconPath: "assets/icons/galaxy.svg",
        title: "Galáxias",
        colorOne: rajah,
        colorTwo: sunshade));
    planets.add(Planet(
        id: 1,
        iconPath: "assets/planets/Earth.svg",
        title: "Sol",
        color: electric_violet));
    planets.add(Planet(
        id: 2,
        iconPath: "assets/planets/Jupiter.svg",
        title: "Mercúrio",
        color: electric_violet));
    planets.add(Planet(
        id: 3,
        iconPath: "assets/planets/Mars.svg",
        title: "Vênus",
        color: electric_violet));
    planets.add(Planet(
        id: 4,
        iconPath: "assets/planets/Mercury.svg",
        title: "Terra",
        color: electric_violet));
    planets.add(Planet(
        id: 5,
        iconPath: "assets/planets/Neptune.svg",
        title: "Marte",
        color: electric_violet));
    planets.add(Planet(
        id: 6,
        iconPath: "assets/planets/Pluto.svg",
        title: "Júpiter",
        color: electric_violet));
    planets.add(Planet(
        id: 7,
        iconPath: "assets/planets/Saturn.svg",
        title: "Saturno",
        color: electric_violet));
    planets.add(Planet(
        id: 8,
        iconPath: "assets/planets/Sun.svg",
        title: "Urânio",
        color: electric_violet));
    planets.add(Planet(
        id: 9,
        iconPath: "assets/planets/Uranus.svg",
        title: "Netuno",
        color: electric_violet));
    planets.add(Planet(
        id: 10,
        iconPath: "assets/planets/Venus.svg",
        title: "Plutão",
        color: electric_violet));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Olá, ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Ana Cecília',
                          style: TextStyle(
                              color: wild_strawberry,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    size: 24,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20),
              child: Text(
                "O que você vai aprender hoje?",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
        height: 140,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBox(
              controller: controller,
              hint: "Procure planetas, asteroides, estrelas...",
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 24.0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.height * 0.15,
                    margin: EdgeInsets.only(top: 8, right: 16, bottom: 8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            categories[index].colorOne,
                            categories[index].colorTwo
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          categories[index].iconPath,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          categories[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  );
                },
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Planetas",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 24.0),
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.height * 0.2,
                      margin: EdgeInsets.only(top: 8, right: 16, bottom: 8),
                      decoration: BoxDecoration(
                          color: god_gray,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: -50,
                            top: -30,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        planet: planets[index],
                                      ),
                                    ));
                              },
                              child: Hero(
                                tag: planets[index].id,
                                child: SvgPicture.asset(
                                  planets[index].iconPath,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            right: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  planets[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: planets.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
