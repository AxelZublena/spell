import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:spell/widgets/AppBars.dart';

class DefisRoute extends StatelessWidget {
  final int initIndex;

  const DefisRoute({
    Key? key,
    this.initIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initIndex,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DEFIS'),
          bottom: const TabBar(
            isScrollable: true,
            unselectedLabelStyle: TextStyle(
              // fontSize: 20,
              fontFamily: "Fira Sans",
              fontWeight: FontWeight.bold,
            ),
            labelStyle: TextStyle(
              // fontSize: 20,
              fontFamily: "Fira Sans",
              fontWeight: FontWeight.bold,
            ),
            tabs: <Widget>[
              Tab(text: "HEBDOMADAIRE"),
              Tab(text: "JOURNALIER"),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: Text("HEBDOMADAIRE")),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "DAILY 1",
                ),
                ExpandableCard(
                  title: "DAILY 2",
                ),
                ExpandableCard(
                  title: "DAILY 3",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardColumn extends StatelessWidget {
  final List<ExpandableCard> cards;

  const CardColumn(
      {Key? key,
      this.cards = const <ExpandableCard>[
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
            padding: EdgeInsets.only(bottom: 10),
            child: cards[index],
          );
        },
      ),
    );
  }
}

class ExpandableCard extends StatelessWidget {
  final String title;
  final String desc;
  final double size;
  final String font;

  const ExpandableCard({
    Key? key,
    this.title = "",
    this.desc = "Aucunes infos disponibles pour le moment.",
    this.size = 50,
    this.font = "Imbue",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 6,
          color: const Color(0xff1198b8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black)),
          child: RoundedExpansionTile(
            duration: const Duration(milliseconds: 120),
            noTrailing: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Center(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: size,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.black,
                        letterSpacing: 4.0),
                  ),
                  // Solid text as fill.
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: size,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffcb5a9f),
                        letterSpacing: 4.0),
                  ),
                ],
              ),
            )),
            children: [
              ListTile(
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                title: Text(desc),
              )
            ],
          ),
        ));
  }
}
