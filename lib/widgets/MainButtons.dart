import 'package:flutter/material.dart';
import 'package:spell/calendrier.dart';
import 'package:spell/commander.dart';
import 'package:spell/defis.dart';
import 'package:spell/sos.dart';
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
            'Envie de challenge ?\n\nComplete un max de défis pour remporter des lots d’un autre monde !',
        next: const DefisRoute());
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
          initIndex: 0,
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
            'Viens profiter du SOS !\n\nChoisis ta catégorie et nous ferons de notre mieux pour remplir ta demande',
        next: const SOSRoute());
    ;
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
