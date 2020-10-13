import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_solar_system/colors.dart';
import 'package:flutter_ui_concept_solar_system/data/detail.dart';
import 'package:flutter_ui_concept_solar_system/widgets/custom_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Detail> details = [];

  @override
  void initState() {
    details.add(Detail(
        text: "Intro",
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
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Column(
        children: [
          Header(),
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
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: god_gray,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
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
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: CustomText(
                  text: "Marte",
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.bookmark),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomText(
            text:
                "Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o , porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada.",
            color: god_gray,
            size: 16,
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
        padding: EdgeInsets.symmetric(vertical: 16),
        itemCount: details.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: CustomText(
              color: Colors.black,
              size: 24,
              text: details[index].text,
            ),
            subtitle: Container(
              height: 1,
              color: god_gray,
            ),
            initiallyExpanded: false,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  text: details[index].detail,
                  color: god_gray,
                  size: 16,
                ),
              )
            ],
          );
        });
  }
}
