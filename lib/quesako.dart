import 'package:flutter/material.dart';
import 'package:spell/widgets/LogoLinks.dart';

class QuesakoRoute extends StatelessWidget {
  const QuesakoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QUESAKO"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                    "-	un peu de bave d’araignée\n"
                    "-	une plume de chèvre\n"
                    "-	une pincée d’os de saumon en poudre\n\n"
                    "Puis reciter les incantations.\n\n"
                    "Voilà la recette pour faire apparaitre le grimoire de livraison.\n\n"
                    "T’as réussi à t’en proccurer un apparemment, bien joué filou. Mais à quoi ça sert ?\n\n"
                    "Sur ce papyrus magique, d’un simple clic tu peux retrouver les recettes proposées par nos disciples-cuistot du Phoenix ainsi que leur composition (végé ou non, allergènes, …). Dès que t’as fait ton choix (et que c’est le bon jour), tu peux commander et faire tes demandes spéciales pour que les sorcières et leur balai magique te livrent dans les plus brefs délais.\n\n"
                    "Tu as aussi accès aux défis hebdomadaires et journaliers que tu peux faire vérifier en DM de notre compte Instagram. Si le Phoenix suprême valide ta participation, il t’accordera des points. Avec assez de points, tu remportera des goodies et des prix légendaires dignes des plus grandes reliques !",
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
            LogoLinks(),
          ]),
        ));
  }
}
