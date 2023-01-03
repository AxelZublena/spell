import 'package:flutter/material.dart';
import 'package:spell/commander.dart';

import 'widgets/ExpandableCard.dart';

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
            padding: const EdgeInsets.only(bottom: 10),
            child: cards[index],
          );
        },
      ),
    );
  }
}
