import 'package:flutter/material.dart';
import 'package:spell/widgets/ExpandableCard.dart';
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
        body: const Calendrier());
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
      title: "SOIREE MULETS",
      desc: "SOIREE MULETS",
      date: "22h - 5h",
      address: "3 Parv. Louis Néel, 38000 Grenoble",
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
                      title: "SOIREE MULETS",
                      desc: "SOIREE MULETS",
                      date: "22h - 5h",
                      address: "3 Parv. Louis Néel, 38000 Grenoble",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-28") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "SOIREE SPELL",
                      desc: "SOIREE SPELL",
                      date: "22h - 5h",
                    ),
                    SOSButton(),
                    ExpandableCard(
                      title: "EVENT SPORT 3e Liste",
                      desc: "SOIREE SPORT 3e Liste",
                      date: "10h - 20h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-29") {
                  widgets = const <StatelessWidget>[
                    SOSButton(),
                    ExpandableCard(
                      title: "EVENT SPORT MULETS",
                      desc: "EVENT SPORT MULETS",
                      date: "10h - 20h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-30") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "MINP SPELL",
                      desc: "MINP SPELL",
                      date: "20h - 00h",
                      address:
                          "Domaine Universitaire, 730 Rue de la Piscine, 38402 Saint-Martin-d'Hères",
                    ),
                    ExpandableCard(
                      title: "GOUTER",
                      desc: "GOUTER",
                      date: "18h - 20h",
                      address: "3e Liste - Parvis Minatec\nMULETS - Campus",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-31") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "MINP 3e Liste",
                      desc: "MINP 3e Liste",
                      date: "20h - 00h",
                      address:
                          "Domaine Universitaire, 730 Rue de la Piscine, 38402 Saint-Martin-d'Hères",
                    ),
                    ExpandableCard(
                      title: "GOUTER",
                      desc: "GOUTER",
                      date: "18h - 20h",
                      address: "MULETS - Parvis Minatec\nSPELL - Campus",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-01") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                        title: "FAKELISTE",
                        desc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-02") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "MINP MULETS",
                      desc: "MINP MULETS",
                      date: "20h - 00h",
                      address:
                          "Domaine Universitaire, 730 Rue de la Piscine, 38402 Saint-Martin-d'Hères",
                    ),
                    ExpandableCard(
                      title: "GOUTER",
                      desc: "GOUTER",
                      date: "18h - 20h",
                      address: "SPELL - Parvis Minatec\n3e Liste - Campus",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-03") {
                  widgets = const <StatelessWidget>[WELButton()];
                } else if (date.toString().split(" ")[0] == "2023-02-04") {
                  widgets = const <StatelessWidget>[
                    WELButton(),
                    ExpandableCard(
                      title: "SOIREE 3e Liste",
                      desc: "SOIREE 3e Liste",
                      date: "22h - 5h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-05") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "EVENT SPORT SPELL",
                      desc: "EVENT SPORT SPELL",
                      date: "10h - 20h",
                    ),
                    WELButton(),
                    ExpandableCard(
                      title: "DISCOURS - DEBAT",
                      desc: "DISCOURS - DEBAT",
                      date: "16h - 28h",
                    ),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-06") {
                  widgets = const <StatelessWidget>[
                    ExpandableCard(
                      title: "VOTE",
                      desc: "VOTE",
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
