import 'package:flutter/material.dart';
import 'package:spell/defis.dart';
import 'package:spell/widgets/AppBars.dart';
import 'package:spell/widgets/ExpandableCard.dart';
import 'package:spell/widgets/LogoLinks.dart';

class CommanderSOSRoute extends StatelessWidget {
  const CommanderSOSRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: RegularAppBar(
          title: "COMMANDER",
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: ListView(children: const [
            ExpandableCard(
              title: "VENDREDI",
            ),
            ExpandableCard(
              title: "SAMEDI",
            ),
            ExpandableCard(
              title: "DIMANCHE",
            ),
            SizedBox(
              height: 15,
            ),
            LogoLinks(),
            SizedBox(
              height: 15,
            )
          ]),
        ));
  }
}
