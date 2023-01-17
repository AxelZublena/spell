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
              desc: "18h - 22h :\n06 18 35 84 20\n07 81 76 07 80",
            ),
            ExpandableCard(
              title: "SAMEDI",
              desc:
                  "8h - 12h :\n07 67 43 69 05\n06 38 03 30 10\n\n12h - 16h :\n06 18 35 84 20\n07 81 76 07 80\n\n16h - 22h :\n07 67 43 69 05\n06 29 94 02 28",
            ),
            ExpandableCard(
              title: "DIMANCHE",
              desc:
                  "8h - 12h :\n07 81 29 83 99\n06 95 79 31 23\n\n12h - 16h :\n07 81 96 66 59\n07 67 08 61 21\n\n16h - 20h :\n06 38 73 04 04\n06 51 65 64 87\n\n20h - 00h :\n07 81 96 66 59\n06 41 98 41 20",
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
