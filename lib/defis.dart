import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
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
                child: Column(
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
                              "1 - Talent liste\n"
                              "2 - Vol\n"
                              "3 - Memes\n"
                              "4 - Musique\n"
                              "5 - Magie\n"
                              "6 - Costumes\n"
                              "7 - Danse\n"
                              "8 - Event",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Fira Sans",
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Column(
                                children: [
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
                                            "instagram://user?username=grenoble_inp_phelma",
                                        webUrl:
                                            "https://www.instagram.com/grenoble_inp_phelma",
                                      ),
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ],
                )),
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
            padding: const EdgeInsets.only(bottom: 10),
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
