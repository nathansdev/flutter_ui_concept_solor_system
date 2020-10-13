import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/data/planet.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_appbar.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_text.dart';
import 'package:flutter_ui_concept_solar_system/widgets/search_box.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  List<Planet> planets = [];

  @override
  void initState() {
    super.initState();
    planets.add(Planet(
        iconPath: "assets/planets/Earth.svg",
        title: "Earth",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Jupiter.svg",
        title: "Jupiter",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Mars.svg",
        title: "Mars",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Mercury.svg",
        title: "Mercury",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Neptune.svg",
        title: "Neptune",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Pluto.svg",
        title: "Neptune",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Saturn.svg",
        title: "Neptune",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Sun.svg",
        title: "Sun",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Uranus.svg",
        title: "Uranus",
        color: electric_violet));
    planets.add(Planet(
        iconPath: "assets/planets/Venus.svg",
        title: "Venus",
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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    size: 24,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20),
              child: Text(
                "Resultados da busca",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            )
          ],
        ),
        height: 140,
      ),
      body: Column(
        children: [
          SearchBox(
            controller: controller,
            hint: "Procure planetas, asteroides, estrelas...",
          ),
          Flexible(
              child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/detail");
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  margin: EdgeInsets.only(top: 8, right: 16, bottom: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: god_gray,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.add),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: "Netuno",
                                  size: 32,
                                  color: Colors.white,
                                ),
                                Icon(Icons.bookmark, color: Colors.white)
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            CustomText(
                              size: 14,
                              color: white_65,
                              text:
                                  "Netuno é o oitavo planeta do Sistema Solar, o último a partir do Sol desde a reclassificação...",
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Row(
                              children: [
                                CustomText(
                                  size: 14,
                                  color: Colors.white,
                                  text: "Continue lendo",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
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
          ))
        ],
      ),
    );
  }
}
