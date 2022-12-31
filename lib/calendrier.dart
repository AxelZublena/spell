import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import './widgets/MainButton.dart';
import './widgets/MainButtons.dart';

class CalendrierRoute extends StatelessWidget {
  final List<StatelessWidget> widgets;

  const CalendrierRoute({
    Key? key,
    this.widgets = const <StatelessWidget>[
      Calendar(),
      Details(),
      SOSButton(),
      SoireeMuletsButton()
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CALENDRIER"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: widgets[index]);
              }),
        ));
  }
}

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          DayButton(
            position: [0, 5, 10, 0],
            date: "27/01",
            isSelected: true,
          ),
          DayButton(
            position: [0, 30, 0, 0],
          ),
          DayButton(
            position: [0, 0, 0, 0],
          ),
          DayButton(
            position: [0, 30, 0, 0],
          ),
        ]),
        Row(children: const [
          DayButton(
            position: [30, 0, 0, 0],
          ),
          DayButton(
            position: [10, 50, 0, 0],
          ),
          DayButton(
            position: [20, 0, 0, 0],
          ),
          DayButton(
            position: [10, 30, 0, 0],
          ),
        ]),
        Row(children: const [
          DayButton(
            position: [0, 5, 0, 0],
          ),
          DayButton(
            position: [0, 30, 0, 0],
          ),
          DayButton(
            position: [0, 0, 10, 0],
          ),
          DayButton(
            position: [0, 30, 10, 0],
          ),
        ]),
      ],
    );
  }
}

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: double.infinity,
        height: 25,
        child: DecoratedBox(
            decoration: BoxDecoration(color: const Color(0xff1198b8)),
            child: Center(
              child: Text("Vendredi 27/01"),
            )));
  }
}

class DayButton extends StatelessWidget {
  final List<double> position;
  final String date;
  final bool isSelected;

  const DayButton(
      {Key? key,
      this.position = const <double>[0, 0, 0, 0],
      this.date = "27/01",
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: () {},
          // Add image & text
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0
                // position[0],
                // position[1],
                // position[2],
                // position[3],
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isSelected
                    ? Image.asset("images/date-icon.png")
                    : Image.asset("images/penta.png"),
                Text(
                  date,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}
