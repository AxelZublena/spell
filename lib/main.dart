import 'package:flutter/material.dart';
import 'package:spell/defis.dart';
import 'package:spell/wel.dart';
import 'package:spell/widgets/AppBars.dart';
import 'package:spell/widgets/LogoLinks.dart';
import './widgets/SecondaryButton.dart';
import './widgets/MainButtons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<int, Color> primaryColorMap = {
      50: const Color.fromRGBO(203, 90, 159, .1),
      100: const Color.fromRGBO(203, 90, 159, .2),
      200: const Color.fromRGBO(203, 90, 159, .3),
      300: const Color.fromRGBO(203, 90, 159, .4),
      400: const Color.fromRGBO(203, 90, 159, .5),
      500: const Color.fromRGBO(203, 90, 159, .6),
      600: const Color.fromRGBO(203, 90, 159, .7),
      700: const Color.fromRGBO(203, 90, 159, .8),
      800: const Color.fromRGBO(203, 90, 159, .9),
      900: const Color.fromRGBO(203, 90, 159, 1),
    };
    Map<int, Color> secondaryColorMap = {
      50: const Color.fromRGBO(17, 152, 184, .1),
      100: const Color.fromRGBO(17, 152, 184, .2),
      200: const Color.fromRGBO(17, 152, 184, .3),
      300: const Color.fromRGBO(17, 152, 184, .4),
      400: const Color.fromRGBO(17, 152, 184, .5),
      500: const Color.fromRGBO(17, 152, 184, .6),
      600: const Color.fromRGBO(17, 152, 184, .7),
      700: const Color.fromRGBO(17, 152, 184, .8),
      800: const Color.fromRGBO(17, 152, 184, .9),
      900: const Color.fromRGBO(17, 152, 184, 1),
    };

    final List<StatelessWidget> widgets = <StatelessWidget>[
      const CalendrierButton(),
      const SOSButton(),
      const WELButton(),
      const FirstSecondaryRow(),
      const DefisButton(),
      const SecondSecondaryRow(),
      const BigImage(),
      const LogoLinks(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff1198b8, secondaryColorMap),
        scaffoldBackgroundColor: MaterialColor(0xffcb5a9f, primaryColorMap),
      ),
      title: 'Spell',
      home: Scaffold(
          appBar: const MainAppBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ListView.builder(
                itemCount: widgets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: widgets[index]);
                }),
          )),
    );
  }
}

class SecondSecondaryRow extends StatelessWidget {
  const SecondSecondaryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
            child: SecondaryButton(
          text: "HEBDO",
          next: DefisRoute(
            initIndex: 0,
          ),
        )),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SecondaryButton(
            text: "JOURNALIER",
            next: DefisRoute(
              initIndex: 1,
            ),
          ),
        ),
      ],
    );
  }
}

class FirstSecondaryRow extends StatelessWidget {
  const FirstSecondaryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
          child: SecondaryButton(
            text: "PLATS",
            next: WELRoute(
              initIndex: 0,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SecondaryButton(
            text: "DESSERTS",
            next: WELRoute(
              initIndex: 1,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SecondaryButton(
            text: "AUTRES",
            next: WELRoute(
              initIndex: 2,
            ),
          ),
        ),
      ],
    );
  }
}

class BigImage extends StatelessWidget {
  const BigImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/big-logo.png', width: 50);
  }
}
