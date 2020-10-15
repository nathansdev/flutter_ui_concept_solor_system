import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/data/planet.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_appbar.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_text.dart';

import 'detail.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key key}) : super(key: key);

  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  List<Planet> planets = [];

  @override
  void initState() {
    super.initState();
    planets.add(Planet(
        id: 1,
        iconPath: "assets/planets/Earth.svg",
        title: "Sol",
        color: electric_violet));
    planets.add(Planet(
        id: 2,
        iconPath: "assets/planets/Jupiter.svg",
        title: "Mercú",
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
              height: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 20),
              child: Text(
                "Saved",
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
        height: 120,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      planet: planets[index],
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      color: god_gray,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -50,
                        top: -30,
                        child: Hero(
                            tag: planets[index].id,
                            child: SvgPicture.asset(
                              planets[index].iconPath,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.25,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: planets[index].title,
                                        maxLines: 1,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                      Icon(Icons.bookmark, color: salmon)
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  CustomText(
                                    size: 14,
                                    color: white_65,
                                    maxLines: 4,
                                    text:
                                        "Netuno é o oitavo planeta do Sistema Solar, o último a partir do Sol desde a reclassificação...",
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Row(
                                    children: [
                                      CustomText(
                                        size: 14,
                                        color: Colors.white,
                                        maxLines: 1,
                                        text: "Continue lendo",
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: salmon,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: planets.length,
      ),
    );
  }
}
