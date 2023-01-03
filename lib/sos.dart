import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:spell/commander.dart';

class SOSRoute extends StatelessWidget {
  const SOSRoute({super.key});

  // Ajouter btn commander + page similaire a WEL
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SOS'),
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
              Tab(text: "BOUFFE"),
              Tab(text: "SOIREE"),
              Tab(text: "CORVEES"),
              Tab(
                text: "BIEN ETRE",
              ),
              Tab(text: "AUTRES"),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Petit dej' envouté",
                ),
                ExpandableCard(
                  title: "Crepes de marabout",
                ),
                ExpandableCard(
                  title: "Plateau apéro",
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Un tour de balai volant",
                ),
                ExpandableCard(
                  title: "Elixir personnalisé",
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Vaisselle méchant propre",
                ),
                ExpandableCard(
                  title: "Pressing",
                ),
                ExpandableCard(
                  title: "Courses",
                ),
                ExpandableCard(
                  title: "Aide aux devoirs",
                ),
                ExpandableCard(
                  title: "Nettoyage voiture",
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Coiffeur enchanté",
                ),
                ExpandableCard(
                  title: "Pack détente",
                ),
                ExpandableCard(
                  title: "Chicha",
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Tour de magie",
                ),
                ExpandableCard(
                  title: "Devination",
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CommanderRoute()),
            );
          },
          icon: const Icon(Icons.shopping_cart_checkout_sharp),
          label: const Text('COMMANDER'),
          backgroundColor: const Color(0xff1ad2d6),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
    this.size = 40,
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
              padding: const EdgeInsets.symmetric(vertical: 10),
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
                        letterSpacing: 2.0),
                  ),
                  // Solid text as fill.
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: size,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffcb5a9f),
                        letterSpacing: 2.0),
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
