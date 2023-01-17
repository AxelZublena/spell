import 'package:flutter/material.dart';
import 'package:spell/widgets/ExpandableCard.dart';
import 'package:spell/widgets/LogoLinks.dart';
import './widgets/MainButtons.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class CalendrierRoute extends StatelessWidget {
  const CalendrierRoute({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CALENDRIER"),
        ),
        body: ListView(
          children: [
            Calendrier(),
            LogoLinks(),
            SizedBox(
              height: 15,
            )
          ],
        ));
  }
}

class Calendrier extends StatefulWidget {
  const Calendrier({Key? key}) : super(key: key);

  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
  DatePickerController _controller = DatePickerController();

  List<StatelessWidget> _displayedWidgets = <StatelessWidget>[
    const SOSButton(),
    const ExpandableCard(
      title: "SOIREE 2e Liste",
      isPurple: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SingleChildScrollView(
            child: Wrap(
          runSpacing: 20,
          children: [
            DatePicker(
              DateTime.utc(2023, 1, 27),
              width: 60,
              height: 80,
              controller: _controller,
              initialSelectedDate: DateTime.utc(2023, 1, 27),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              activeDates: [
                DateTime.utc(2023, 1, 27),
                DateTime.utc(2023, 1, 28),
                DateTime.utc(2023, 1, 29),
                DateTime.utc(2023, 1, 30),
                DateTime.utc(2023, 1, 31),
                DateTime.utc(2023, 2, 1),
                DateTime.utc(2023, 2, 2),
                DateTime.utc(2023, 2, 3),
                DateTime.utc(2023, 2, 4),
                DateTime.utc(2023, 2, 5),
                DateTime.utc(2023, 2, 6),
                DateTime.utc(2023, 2, 7),
              ],
              onDateChange: (date) {
                List<StatelessWidget> widgets = <StatelessWidget>[];
                // New date selected
                if (date.toString().split(" ")[0] == "2023-01-27") {
                  widgets = const <StatelessWidget>[
                    SOSButton(),
                    ExpandableCard(
                      title: "SOIREE 2e Liste",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-28") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "SOIREE SPELL",
                      desc:
                          "Sorciers, Sorcières, venez passer une soirée inoubliable, venez vous ambiancer sur un son qui ferai zouker Dumbledore, venez profiter de toutes nos potions magiques en illimitées ainsi que tout nos artifices qui vous feront voyager dans un monde de magie.",
                      date: "22h - 4h",
                      address:
                          "Salle Orchidée\n6 Rue Fernand Pelloutier, 38130 Échirolles",
                    ),
                    SOSButton(),
                    ExpandableCard(
                        title: "EVENT SPORT 3e Liste", isPurple: true),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-29") {
                  widgets = const <StatelessWidget>[
                    SOSButton(),
                    ExpandableCard(
                      title: "EVENT SPORT 2e Liste",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-30") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "MINP SPELL",
                      desc:
                          "Une Kfête d'anniversaire comme vous en avez jamais vécu !\nSurtout pour les grands et pas pour les petits.",
                      date: "20h - 00h",
                      address:
                          "MINP, 730 Rue de la Piscine, 38402 Saint-Martin-d'Hères",
                    ),
                    ExpandableCard(
                      title: "GOUTER",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-31") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "GOUTER",
                      desc:
                          "Viens chercher des forces après cette belle journée auprès de nos druides. Tu en aura besoin pour ce soir.",
                      date: "18h - 20h",
                      address: "Campus",
                    ),
                    ExpandableCard(
                      title: "MINP 3e Liste",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-01") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "FAKELISTE",
                      desc: "Les 2A ont préparé 2-3 trucs.",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-02") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "GOUTER",
                      desc:
                          "Viens chercher des forces après cette belle journée auprès de nos druides. Tu en aura besoin pour ce soir.",
                      date: "18h - 20h",
                      address: "Parvis Minatec",
                    ),
                    ExpandableCard(
                      title: "SOIREE 2e Liste",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-03") {
                  widgets = const <StatelessWidget>[WELButtonSpec1()];
                } else if (date.toString().split(" ")[0] == "2023-02-04") {
                  widgets = const <StatelessWidget>[
                    WELButtonSpec2(),
                    ExpandableCard(
                      title: "SOIREE 3e Liste",
                      isPurple: true,
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-05") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "EVENT SPORT SPELL",
                      desc: "Brice au tournoi des sorciers\n\n"
                          "Par un heureux hasard, le roi de la glisse est de retour dans notre liste.\n"
                          "Avec l'aide de vos magiciens préférés, il a créé, ici même à grenoble, une vague infinie.\n"
                          "Il vous invite à vous affronter entre groupes de phelmatiens pour décrocher le trophé du meilleur surfeur-gicien....",
                      date: "10h - 20h",
                      address: "33 Cours Jean Jaurès, 38130 Échirolles\n\n"
                          "- Ligne 25 depusi Bd Maréchal Foch\n- Tram E + C2 depuis Alsace Lo",
                    ),
                    WELButtonSpec3(),
                    ExpandableCard(
                      title: "DISCOURS - DEBAT",
                      desc:
                          "Est-ce bien nécessaire ? L'envoûtement est imparable.",
                      date: "16h - 18h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-06") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "VOTE",
                      desc:
                          "Qu'un seule option : La SPELL. Sinon on fait appel aux marabouts",
                      date: "8h - 5h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-07") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "RESULTATS",
                      desc: "RESULTAT",
                      date: "18h",
                    ),
                  ];
                } else {
                  widgets = const <StatelessWidget>[
                    SOSButton(),
                  ];
                }

                setState(() {
                  _displayedWidgets = widgets;
                });
              },
              locale: "fr_FR",
            ),
            const SizedBox(
              width: 20,
            ),
            ..._displayedWidgets,
            const SizedBox(
              width: 20,
            ),
          ],
        )));
  }
}
