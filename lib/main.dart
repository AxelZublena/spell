import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:spell/calendrier.dart';
import 'package:spell/quesako.dart';
import 'package:spell/wel.dart';
import './widgets/MainButton.dart';
import './widgets/SecondaryButton.dart';
import './widgets/MainButtons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget button = Center(
    //     child: ElevatedButton.icon(
    //   onPressed: () {
    //     debugPrint("Clicked!");
    //   },
    //   icon: ImageIcon(
    //     AssetImage('images/oeil.png'),
    //     size: 50,
    //   ),
    //   label: Text('Image'), // <-- Text
    // ));

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
      CalendrierButton(),
      SOSButton(),
      WELButton(),
      FirstSecondaryRow(),
      DefisButton(),
      SecondSecondaryRow(),
      BigImage(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff1198b8, secondaryColorMap),
        scaffoldBackgroundColor: MaterialColor(0xffcb5a9f, primaryColorMap),
      ),
      title: 'Spell',
      home: Scaffold(
          appBar: mainBar(),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ListView.builder(
                itemCount: widgets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
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
        )),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SecondaryButton(
            text: "JOURNALIER",
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
            next: const WELRoute(
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
            next: const WELRoute(
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
            next: const WELRoute(
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

class mainBar extends StatelessWidget implements PreferredSizeWidget {
  const mainBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuesakoRoute()),
              );
            },
            icon: ImageIcon(
              AssetImage('images/cristal.png'),
              size: 130,
            ),
          );
        },
      ),
      title: Image.asset('images/oeil.png', width: 80),
    );
  }
}
