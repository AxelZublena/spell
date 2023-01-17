import 'package:flutter/material.dart';
import 'package:spell/commander_sos.dart';
import 'package:spell/widgets/LogoLinks.dart';

import 'widgets/CardColumn.dart';
import 'widgets/ExpandableCard.dart';

class SOSRoute extends StatelessWidget {
  const SOSRoute({super.key});

  // Ajouter btn commander + page similaire a WEL
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              Tab(text: "CORVÉES"),
              Tab(
                text: "BIEN ÊTRE",
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
                  title: "Petit dej envoûté",
                  desc:
                      "On passe à la boulangerie pour toi\n(payant au prix de vos courses)",
                ),
                ExpandableCard(
                  title: "10 Crêpes",
                  desc: "Garnitures classiques (3 €)",
                ),
                ExpandableCard(
                  title: "Plateau apéro",
                  desc:
                      "Saucisson, cacahuètes, chips, petit dés d'emmental (3 €)",
                ),
                LogoLinks(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Vaisselle",
                  desc: "Une éponge, du liquide vaisselle et ça part",
                ),
                ExpandableCard(
                  title: "Ménage",
                  desc: "Payant pour le chapito et la tiela",
                ),
                ExpandableCard(
                  title: "Nettoyage du balai magique",
                  desc: "wash, sexy possible",
                ),
                ExpandableCard(
                  title: "Repassage",
                  desc: "Pour être pimpant pour ton date de ce soir",
                ),
                ExpandableCard(
                  title: "Uber eats",
                  desc: "Encore moins bien payé que les vrai",
                ),
                ExpandableCard(
                  title: "Courses",
                  desc:
                      "Avec la spell mobile, vos courses livrées chez vous\n(payant au prix de vos courses)",
                ),
                ExpandableCard(
                  title: "Cuisine",
                  desc:
                      "Tu donnes ta recette, on fait les courses si besoin et on cuisine pour toi",
                ),
                LogoLinks(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Coiffeur à domicile",
                  desc: "Même pour les chauves",
                ),
                ExpandableCard(
                  title: "Massage",
                  desc: "Par des mains de fées",
                ),
                ExpandableCard(
                  title: "Manucure de sorciers",
                  desc: "Pour des mains de fées",
                ),
                LogoLinks(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
            CardColumn(
              cards: [
                ExpandableCard(
                  title: "Taxi balai volant",
                  desc: "Au compteur",
                ),
                ExpandableCard(
                  title: "Chicha ensorcelante",
                  desc: "Bien posé, bien calé (5 €)",
                ),
                ExpandableCard(
                  title: "Pack de la voyante",
                  desc:
                      "Tour de magie, divination, tirage de cartes, séance d’hypnose",
                ),
                ExpandableCard(
                  title: "Séance de coaching",
                  desc: "Sport, amour ou relooking",
                ),
                LogoLinks(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CommanderSOSRoute()),
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
