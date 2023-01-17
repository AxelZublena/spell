import 'package:flutter/material.dart';
import 'package:spell/calendrier.dart';
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
    return const MainButton(
        text: "DEFIS",
        infoDesc:
            "Envie de challenge ?\nComplète un max de défis pour remporter des lots d’un autre monde !",
        next: DefisRoute());
  }
}

class WELButton extends StatelessWidget {
  const WELButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainButton(
        text: "WEL",
        infoDesc: "Commande les délices du sorcier-chef et profite du WEL !",
        next: WELRoute(
          initIndex: 0,
        ));
  }
}

class WELButtonSpec1 extends StatelessWidget {
  const WELButtonSpec1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainButton(
        text: "WEL",
        infoDesc:
            "Commande les délices du sorcier-chef et profite du WEL !\n\n18h - 5h",
        next: WELRoute(
          initIndex: 0,
        ));
  }
}

class WELButtonSpec2 extends StatelessWidget {
  const WELButtonSpec2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainButton(
        text: "WEL",
        infoDesc:
            "Commande les délices du sorcier-chef et profite du WEL !\n\n8h - 22h",
        next: WELRoute(
          initIndex: 0,
        ));
  }
}

class WELButtonSpec3 extends StatelessWidget {
  const WELButtonSpec3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainButton(
        text: "WEL",
        infoDesc:
            "Commande les délices du sorcier-chef et profite du WEL !\n\n8h - 16h\n18h - 00h",
        next: WELRoute(
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
    return const MainButton(
        text: "SOS",
        infoDesc:
            'Découvre un de nos sorts favoris : le "à la rescousse".\nTu nous appelles, on fait le reste.',
        next: SOSRoute());
  }
}

class CalendrierButton extends StatelessWidget {
  const CalendrierButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainButton(
      text: "CALENDRIER",
      infoDesc:
          "C’est la semaine des campagnes !\nPleins d’événements envoutants t’attendent !",
      next: CalendrierRoute(),
    );
  }
}
