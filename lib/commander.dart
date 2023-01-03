import 'package:flutter/material.dart';
import 'package:spell/widgets/AppBars.dart';

class CommanderRoute extends StatelessWidget {
  const CommanderRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: RegularAppBar(
          title: "COMMANDER",
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Center(
              child: Text("COMMANDER"),
            )));
  }
}
