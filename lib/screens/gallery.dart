import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/data/planet.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_appbar.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_text.dart';

import 'detail.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key key}) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
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
        iconPath: "assets/planets/Uranus.svg",
        title: "Netuno",
        color: electric_violet));
    planets.add(Planet(
        id: 8,
        iconPath: "assets/planets/Sun.svg",
        title: "Urânio",
        color: electric_violet));
    planets.add(Planet(
        id: 9,
        iconPath: "assets/planets/Venus.svg",
        title: "Plutão",
        color: electric_violet));
    planets.add(Planet(
        id: 10,
        iconPath: "assets/planets/Uranus.svg",
        title: "Netuno",
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
                "Planetas",
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 2.8,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16),
        padding: EdgeInsets.all(24),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: god_gray,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0))),
                child: Stack(
                  children: [
                    Positioned(
                      left: -50,
                      top: -30,
                      child: Hero(
                        tag: planets[index].id,
                        child: SvgPicture.asset(
                          planets[index].iconPath,
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.23,
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
                            color: salmon,
                          )
                        ],
                      ),
                    )
                  ],
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
