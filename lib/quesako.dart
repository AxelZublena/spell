import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class QuesakoRoute extends StatelessWidget {
  const QuesakoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QUESAKO"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ListView(children: [
            DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff1198b8)),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    "Dans une marmite d’ébène, laisser mijoter à petit feu :\n\n"
                    "- un peu de bave d’araignée\n"
                    "- une plume de chèvre\n"
                    "- une pincé de poudre d’os de saumon\n\n"
                    "Puis reciter les incantations.\n\n"
                    "Voilà la recette pour faire apparaitre le grimoire de livraison."
                    "T’as réussi à t’en procurer un apparemment, bien joué filou. Mais à quoi ça sert ?\n\n"
                    "Sur ce papyrus magique, d’un simple clic tu peux retrouver les recettes proposées par nos disciples-cuistot du Phoenix ainsi que leur composition (végé ou non, allergènes, …).\n"
                    "Dès que t’as fait ton choix (et que c’est le bon jour), tu peux remplir le Gform associé avec tes infos et tes demandes spéciales pour que les sorcières et leur balai magique te livrent dans les plus bref délai.\n\n"
                    "Tu as aussi accès aux défis hebdomadaires et journaliers que tu peux faire vérifier en DM de notre compte Instagram (@). Si le Phoenix suprême valide ta participation, il t’accordera des points. Assez de points te remportera des goodies et des prix légendaires dignes des plus grandes reliques !\n",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Fira Sans",
                      fontSize: 14,
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff1198b8)),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    "Et si jamais tu veux contacter l’Ordre du Phoenix :",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Fira Sans",
                      fontSize: 14,
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: const [
                  Logo(
                    src: 'images/insta-logo.png',
                    nativeUrl: "instagram://user?username=grenoble_inp_phelma",
                    webUrl: "https://www.instagram.com/grenoble_inp_phelma",
                  ),
                  Logo(
                    src: 'images/fb-logo.png',
                    nativeUrl: "fb://phelma/",
                    webUrl: "https://www.facebook.com/phelma",
                  ),
                  Logo(
                    src: 'images/yt-logo.png',
                    nativeUrl: "youtube://@GrenobleINPPhelma",
                    webUrl: "https://www.youtube.com/@GrenobleINPPhelma",
                  ),
                ],
              ),
            ),
          ]),
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
    return Expanded(
      child: TextButton(
        onPressed: () => {_launchInstagram(nativeUrl, webUrl)},
        child: Image.asset(
          src,
        ),
      ),
    );
  }
}
