import 'package:flutter/material.dart';
import 'package:spell/widgets/AppBars.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CommanderRoute extends StatelessWidget {
  const CommanderRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: RegularAppBar(
          title: "COMMANDER",
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Center(
              child: Text("COMMANDER"),
            )));
  }
}
