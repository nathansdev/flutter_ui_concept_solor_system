import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/data/detail.dart';
import 'package:flutter_ui_concept_solar_system/data/planet.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_text.dart';

class DetailPage extends StatefulWidget {
  final Planet planet;
  const DetailPage({this.planet});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Detail> details = [];

  @override
  void initState() {
    details.add(Detail(
        text: "Introdução",
        detail:
            "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada."));
    details.add(Detail(
        text: "Características Físicas",
        detail:
            "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada."));
    details.add(Detail(
        text: "Hidrologia",
        detail:
            "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada."));
    details.add(Detail(
        text: "Geografia",
        detail:
            "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada."));
    details.add(Detail(
        text: "More",
        detail:
            "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada."));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(planet: widget.planet),
          Title(),
          Flexible(
              child: Content(
            details: details,
          ))
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final Planet planet;
  const Header({this.planet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: god_gray,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Hero(
                  tag: planet.id,
                  child: SvgPicture.asset(
                    planet.iconPath,
                    width: MediaQuery.of(context).size.height * 0.3,
                  ))),
          Positioned(
              left: 20,
              top: 60,
              child: Icon(Icons.arrow_back, color: Colors.white)),
          Positioned(
              right: 20,
              top: 60,
              child: Icon(Icons.settings, color: Colors.white)),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: CustomText(
                  text: "Marte",
                  color: god_gray,
                  maxLines: 1,
                  size: 32,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      color: god_gray,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.share,
                      color: god_gray,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomText(
            text:
                "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada.",
            color: gray_75,
            size: 16,
            maxLines: 5,
          ),
        )
      ],
    );
  }
}

class Content extends StatelessWidget {
  final List<Detail> details;
  Content({this.details});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        itemCount: details.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: CustomText(
              color: Colors.black,
              size: 16,
              maxLines: 1,
              text: details[index].text,
            ),
            initiallyExpanded: false,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: CustomText(
                  text: details[index].detail,
                  color: gray_75,
                  maxLines: 5,
                  size: 16,
                ),
              )
            ],
          );
        });
  }
}
