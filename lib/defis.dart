import 'package:flutter/material.dart';
import 'package:spell/widgets/CardGrid.dart';
import 'package:spell/widgets/ExpandableDefis.dart';
import 'package:spell/widgets/LogoLinks.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        body: TabBarView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ListView(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff1198b8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: Text(
                              "Tu te sens assez brave pour prendre part au rite de passage et devenir un disciple du Phoenix ? Commence par réaliser un maximum de défis et l’ordre du phénix t’accordera peut-être une récompense !",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Fira Sans",
                                fontSize: 16,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CardGrid(cards: [
                      ExpandableDefis(
                        title: "R0",
                        desc: "Lancer un mauvais sort à une liste adverse",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R1",
                        desc: "Partager notre compte insta dans sa story",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R2",
                        desc: "Prendre une photo avec un goodies de la liste",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R3",
                        desc: "Ecrire SPELL avec des corps",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R4",
                        desc: "Faire un tour de magie",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R5",
                        desc: "Connaître le refrain du rap",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R6",
                        desc: "Ecrire un poème la Spell",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R7",
                        desc:
                            "Compter le nombre de faux raccord de bague dans le film",
                        pts: "5 pts",
                      ),
                      ExpandableDefis(
                        title: "R8",
                        desc:
                            "Compter le nombre de fois où le petit cheval apparait dans le film",
                        pts: "5 pts/stickers",
                      ),
                      ExpandableDefis(
                        title: "R9",
                        desc:
                            "Coller nos stickers dans des endroits improbables",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "R10",
                        desc: "Venir en cours habillé tout en rose",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "R11",
                        desc: "Venir en cours en claquettes",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "R12",
                        desc:
                            "Aller à une soirée de campagne avec un chapeau de sorcier",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "R13",
                        desc: "Danser le refrain de la chorée",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "R14",
                        desc: "Faire une teinture rose à la bombe",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "R15",
                        desc: "Se baigner dans l'isère",
                        pts: "25 pts",
                      ),
                      ExpandableDefis(
                        title: "R16",
                        desc: "Faire une teinture rose semi-permanente",
                        pts: "30 pts",
                      ),
                      ExpandableDefis(
                        title: "R17",
                        desc: "Faire un tour dans la spell mobile",
                        pts: "30 pts",
                      ),
                    ]),
                    const SizedBox(
                      width: double.infinity,
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff1198b8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: Text(
                              "Défis Spellciaux",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Fira Sans",
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    const CardGrid(cards: [
                      ExpandableDefis(
                        title: "S0",
                        desc: "Prendre une photo avec un membre",
                        pts: "1 pts/membre",
                      ),
                      ExpandableDefis(
                        title: "S1",
                        desc: "Battre Romaric ou Maxence au billard",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "S2",
                        desc: "Battre Yanis et Nils au baby foot",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "S3",
                        desc:
                            "Toucher la boule de cristal (le beau crane de Nathan)",
                        pts: "10 pts",
                      ),
                      ExpandableDefis(
                        title: "S4",
                        desc:
                            "Faire un grand écart avec Ugo ou Manon M ou Alice B",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "S5",
                        desc: "Offrir des lunettes de teufeur à Marie C",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "S6",
                        desc: "Faire plus de pompes que sari",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "S7",
                        desc: "Faire plus de jongles que Matthias au foot",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "S8",
                        desc: "Faire un twerk avec le respo twerk (Ugo)",
                        pts: "15 pts",
                      ),
                    ]),
                    const SizedBox(
                      width: double.infinity,
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff1198b8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            child: Text(
                              "Défis Collocs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Fira Sans",
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    const CardGrid(cards: [
                      ExpandableDefis(
                        title: "C1",
                        desc: "Boire un jaune et bleu à la Barn",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "C2",
                        desc: "Réciter une fable de La Fontaine à la fontaine",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "C3",
                        desc: "Ramener un goodies de liste à la collecte",
                        pts: "15 pts",
                      ),
                      ExpandableDefis(
                        title: "C4",
                        desc: "Se faire maquiller en sorcier à la chaudière",
                        pts: "15 pts",
                      ),
                      const SizedBox(
                        width: double.infinity,
                        height: 10,
                      ),
                    ]),
                    LogoLinks(),
                    SizedBox(
                      height: 15,
                    )
                  ],
                )),
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
                                    "Check la story du jour pour connaître le défi !",
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
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                      ),
                    ),
                    LogoLinks(),
                    SizedBox(
                      height: 15,
                    )
                  ],
                )),
          ],
        ),
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
