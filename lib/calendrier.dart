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
    const SoireeMuletsButton(),
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
                    const SoireeMuletsButton(),
                    const SoireeMuletsButton(),
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-28") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-29") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-30") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-01-31") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-01") {
                  widgets = <StatelessWidget>[
                    const SOSButton(),
                    const SoireeMuletsButton()
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-02") {
                  widgets = <StatelessWidget>[
                    const SoireeMuletsButton(),
                    const SOSButton(),
                  ];
                } else if (date.toString().split(" ")[0] == "2023-02-03") {
                  widgets = <StatelessWidget>[
                    const SoireeMuletsButton(),
                    const SOSButton(),
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
