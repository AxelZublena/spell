import 'package:flutter/material.dart';

import 'ExpandableImage.dart';

class CardGrid extends StatelessWidget {
  final List<Widget> cards;

  const CardGrid(
      {Key? key,
      this.cards = const <Widget>[
        ExpandableImage(),
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 8,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ...cards,
            ],
          ),
        ));
  }
}
