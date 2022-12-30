import 'package:flutter/material.dart';
import 'package:spell/calendrier.dart';
import 'package:spell/wel.dart';
import './MainButton.dart';

class DefisButton extends StatelessWidget {
  const DefisButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
        text: "DEFIS",
        infoDesc:
            'Envie de challenge ?\n\nComplete un max de défis pour remporter des lots d’un autre monde !');
  }
}

class WELButton extends StatelessWidget {
  const WELButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
        text: "WEL",
        infoDesc:
            'Viens profiter du WEL !\n\nCommande les délice du sorcier-chef ',
        next: const WELRoute(
          initIndex: 1,
        ));
  }
}

class SOSButton extends StatelessWidget {
  const SOSButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
        text: "SOS",
        infoDesc:
            'Viens profiter du SOS !\n\nChoisis ta catégorie et nous ferons de notre mieux pour remplir ta demande');
  }
}

class CalendrierButton extends StatelessWidget {
  const CalendrierButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      text: "CALENDRIER",
      infoDesc:
          'C’est la semaine des campagnes !\nPleins d’événements t’attendent !',
      next: const CalendrierRoute(),
    );
  }
}

class SoireeMuletsButton extends StatelessWidget {
  const SoireeMuletsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
        text: "SOIREE MULETS",
        infoDesc: 'SOIREE MULETS\n\n22h - 5h\n\nADRESSE');
  }
}
