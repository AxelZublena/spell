import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SOSRoute extends StatelessWidget {
  const SOSRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SOS"),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Center(
              child: Text("SOS"),
            )));
  }
}
