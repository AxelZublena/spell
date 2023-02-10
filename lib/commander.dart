import 'package:flutter/material.dart';
import 'package:spell/defis.dart';
import 'package:spell/widgets/AppBars.dart';
import 'package:spell/widgets/ExpandableCard.dart';
import 'package:spell/widgets/LogoLinks.dart';

class CommanderRoute extends StatelessWidget {
  const CommanderRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: RegularAppBar(
          title: "COMMANDER",
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
                      "Pour commander, rien de plus simple !\n\nAppel dans ta zone, passe ta commande, on te donne les détails puis tu donne ton adresse et qui tu es.",
                      textAlign: TextAlign.center,
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
              Image.asset('images/carte.png', width: 50),
              const SizedBox(
                height: 15,
              ),
              const ExpandableCard(
                title: "VENDREDI",
              ),
              const ExpandableCard(
                title: "SAMEDI",
              ),
              const ExpandableCard(
                title: "DIMANCHE",
              ),
              const SizedBox(
                height: 15,
              ),
              const LogoLinks(),
              const SizedBox(
                height: 15,
              ),
            ])));
  }
}
