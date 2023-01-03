import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:spell/commander.dart';

class WELRoute extends StatelessWidget {
  final int initIndex;

  const WELRoute({
    Key? key,
    this.initIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initIndex,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WEL'),
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
              // fontSize: 20,
              fontFamily: "Fira Sans",
              fontWeight: FontWeight.bold,
            ),
            // unselectedLabelColor: Color(0xffcb5a9f),
            labelStyle: TextStyle(
              // fontSize: 20,
              fontFamily: "Fira Sans",
              fontWeight: FontWeight.bold,
            ),
            // labelColor: Color(0xffcb5a9f),
            tabs: <Widget>[
              Tab(text: "PLAT", icon: Icon(Icons.fastfood_sharp)),
              Tab(
                  text: "DESSERTS",
                  icon: Icon(Icons.emoji_food_beverage_sharp)),
              Tab(text: "AUTRES", icon: Icon(Icons.food_bank)),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CardGrid(
              cards: [
                ExpandableImage(
                  title: "Burger 1",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Burger 2",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Burger 3",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Burger 4 VEGE",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Burger 5 VEGE",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Courgettes Farcies",
                  desc: "Disponible à partir du : 03/02",
                ),
                ExpandableImage(
                  title: "Tartiflette",
                  desc: "Disponible à partir du : 04/02",
                ),
                ExpandableImage(
                  title: "Poke Bowl",
                  desc: "Disponible à partir du : 05/02",
                ),
                ExpandableImage(
                  title: "Soupe",
                  desc: "Disponible à partir du : 05/02",
                ),
                ExpandableImage(
                  title: "Gratin Dauphinois",
                  desc: "Disponible à partir du : 04/02",
                ),
                ExpandableImage(
                  title: "Lasagnes VEGE",
                  desc:
                      "Des lasagnes élaborées par notre sorcier-chef, à base d’épinards. Disponible à partir du : 05/02",
                ),
              ],
            ),
            CardGrid(
              cards: [
                ExpandableImage(
                  title: "Tiramisu",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Crumble Pomme",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Muffins",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Cookies",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Tarte noix",
                  desc: "Disponible à partir du :",
                ),
              ],
            ),
            CardGrid(
              cards: [
                ExpandableImage(
                  title: "Chartreuse",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Pack Isère",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Pack Petit dej",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Pack Apéro",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Jus",
                  desc: "Disponible à partir du :",
                ),
                ExpandableImage(
                  title: "Smoothies",
                  desc: "Disponible à partir du :",
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

class CardGrid extends StatelessWidget {
  final List<ExpandableImage> cards;

  const CardGrid(
      {Key? key,
      this.cards = const <ExpandableImage>[
        ExpandableImage(),
      ]})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: 8,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              ...cards,
              const SizedBox(
                width: double.infinity,
                height: 60,
              ),
            ],
          ),
        ));
  }
}

class ExpandableImage extends StatelessWidget {
  final String img;
  final String title;
  final String desc;

  const ExpandableImage(
      {Key? key,
      this.img = "images/oeil-blanc.png",
      this.title = "WEL 1",
      this.desc = "Aucune description fournis"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.45,
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
            title: Column(
              children: [
                Image.asset(img),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            children: [
              ListTile(
                tileColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(10)),
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
