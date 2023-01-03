import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import './widgets/MainButton.dart';
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
        body: Calendrier());
  }
}

class Calendrier extends StatefulWidget {
  Calendrier({Key? key}) : super(key: key);

  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
  DatePickerController _controller = DatePickerController();

  List<StatelessWidget> _displayedWidgets = <StatelessWidget>[
    const SOSButton(),
    MainButton(
        text: "SOIREE MULETS", infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE')
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
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    MainButton(
                        text: "SOIREE MULETS",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE')
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-28") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "SOIREE SPELL",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                    const SOSButton(),
                    MainButton(
                        text: "EVENT SPORT 3e Liste",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-29") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    MainButton(
                        text: "EVENT SPORT MULETS",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-30") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "MINP SPELL",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                    MainButton(
                        text: "GOUTER",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-31") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "MINP 3e Liste",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                    MainButton(
                        text: "GOUTER",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-01") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "FAKELISTE",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-02") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "MINP MULETS",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                    MainButton(
                        text: "GOUTER",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-03") {
                  widgets = <StatelessWidget>[WELButton()];
                } else if (date.toString().split(" ")[0] == "2023-02-04") {
                  widgets = <StatelessWidget>[
                    WELButton(),
                    MainButton(
                        text: "SOIREE 3e Liste",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-05") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "EVENT SPORT SPELL",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                    WELButton(),
                    MainButton(
                        text: "DISCOURS - DEBAT",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-06") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "VOTE",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-07") {
                  widgets = <StatelessWidget>[
                    MainButton(
                        text: "RESULTATS",
                        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE'),
                  ];
                } else {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
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
