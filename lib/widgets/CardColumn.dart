import 'package:flutter/material.dart';
import 'ExpandableCard.dart';

class CardColumn extends StatelessWidget {
  final List<Widget> cards;

  const CardColumn(
      {Key? key,
      this.cards = const <Widget>[
        ExpandableCard(),
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: cards[index],
          );
        },
      ),
    );
  }
}
