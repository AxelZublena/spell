import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:spell/commander.dart';
import 'package:spell/widgets/CardGrid.dart';
import 'package:spell/widgets/ExpandableImage.dart';
import 'package:spell/widgets/LogoLinks.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        body: TabBarView(
          children: <Widget>[
            CardGrid(
              cards: [
                ExpandableImage(
                  title: "Burger US Beaf",
                  desc:
                      "Le burger classique qui saura vous régaler... Bienvenue au Wel-Spell !\nsteak haché boeuf, cheddar, oignons, moutarde, ketchup, sel, poivre\n\nDispo à partir du : 03/02",
                  img: "images/wel/burger.jpg",
                ),
                ExpandableImage(
                  title: "Burger Chicken Thaï",
                  desc:
                      "Spécialité spell, laissez vous tentez par ce burger.\nblanc de poulet, salade, oignons, cacahuètes, curry, sel poivre, mayonnaise\n\nDispo à partir du : 03/02",
                  img: "images/wel/burger.jpg",
                ),
                ExpandableImage(
                  title: "Burger Végé",
                  desc:
                      "Vous êtes végé, démarrez ce WEL avec notre burger spécial meat free.\ncarotte, chou, mayonnnais, pomme de terre, oeuf, sel, poivre, sauce barbecue\n\nDispo à partir du : 03/02",
                  img: "images/wel/burger.jpg",
                ),
                ExpandableImage(
                  title: "Tartiflette",
                  desc:
                      "Classique magique inimitable, les chefs Spell vous ont préparé cette douceur des montagnes.\nPatate, lardon, fromage à tartiflette, oignon, sel, poivre\n\nDispo à partir du : 04/02",
                  img: "images/wel/tarti.jpg",
                ),
                ExpandableImage(
                  title: "Gratin Dauphinois",
                  desc:
                      "Plat typique régional, amateur de patate ce plat est fait pour toi.\npatate, lait, poivre, sel, muscade, beure, crème, ail\n\nDispo à partir du : 04/02",
                  img: "images/wel/gratin.jpg",
                ),
                ExpandableImage(
                  title: "Lasagnes",
                  desc:
                      "Les chefs spells ont, avec grâce et magie, revisité ce plat avec des légumes de saison.\nVégétariens et amateurs de légumes en tous genre, ce plat va vous combler.\népinard, potiron, oignon, beure, lait, farine, pâte, gruyère\n\nDispo à partir du : 05/02",
                  img: "images/wel/lasagnes.jpg",
                ),
                ExpandableImage(
                  title: "Poke Bowl",
                  desc:
                      "Envie de changer d'air, laissez vous dépayser par notre poké.\n\nDispo à partir du : 05/02",
                  img: "images/wel/poke.jpg",
                ),
                LogoLinks(),
                const SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
            CardGrid(
              cards: [
                ExpandableImage(
                  title: "Tarte au noix",
                  desc:
                      "Laissez vous tenter par notre dessert spécial grenoble.\nnoix, pate sablé, sucre, oeuf, crème fraiche, farine, levure, lait, huile",
                  img: "images/wel/noix.jpeg",
                ),
                ExpandableImage(
                  title: "Crumble",
                  desc:
                      "Le juste mélange entre un dessert croquant et fondant.\npomme, cannelle, beure, farine, sucre",
                  img: "images/wel/crumble.jpg",
                ),
                ExpandableImage(
                  title: "Cookies",
                  desc:
                      "Un cookies croquant qui vous fera fondre de douceur...\nchocolat, sucre, farine, beurre, levure chimique",
                  img: "images/wel/cookies.jpg",
                ),
                ExpandableImage(
                  title: "Muffins",
                  desc:
                      "Un muffin fondant qui vous fera craquer de bonheur\nchocolat, sucre, farine, beurre, oeufs.",
                  img: "images/wel/muffins.jpg",
                ),
                LogoLinks(),
                const SizedBox(
                  width: double.infinity,
                  height: 60,
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff1198b8)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Column(
                                children: const [
                                  Text(
                                    "La Spell propose aussi packs thématiques à retrouver sur Instagram !",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Fira Sans",
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: SizedBox(
                                      width: 100,
                                      child: Logo(
                                        src: 'images/insta-logo-purple.png',
                                        nativeUrl:
                                            "instagram://user?username=spell_la_liste",
                                        webUrl:
                                            "https://www.instagram.com/spell_la_liste",
                                      ),
                                    ),
                                  )
                                ],
                              ))),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 15,
                    ),
                    const LogoLinks(),
                  ],
                )),
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

_launchInstagram(String nativeUrl, String webUrl) async {
  // var nativeUrl = "instagram://user?username=balkan.exe";
  // var webUrl = "https://www.instagram.com/balkan.exe";

  try {
    await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
  } catch (e) {
    await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
  }
}

class Logo extends StatelessWidget {
  final String src;
  final String nativeUrl;
  final String webUrl;

  const Logo({
    Key? key,
    this.src = "images/insta-logo.png",
    this.nativeUrl = "instagram://user?username=balkan.exe",
    this.webUrl = "https://www.instagram.com/balkan.exe",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {_launchInstagram(nativeUrl, webUrl)},
      child: Image.asset(
        src,
      ),
    );
  }
}
