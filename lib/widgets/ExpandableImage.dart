import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class ExpandableImage extends StatelessWidget {
  final String img;
  final String title;
  final String desc;

  const ExpandableImage(
      {Key? key,
      this.img = "images/oeil-blanc.png",
      this.title = "WEL 1",
      this.desc = "Aucune description fournis"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.45,
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
            title: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // Image.asset(img),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(img),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Fira Sans",
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.black,
                            letterSpacing: 0.0),
                      ),
                      // Solid text as fill.
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: "Fira Sans",
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcb5a9f),
                            letterSpacing: 0.0),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   title,
                //   textAlign: TextAlign.center,
                // ),
              ],
            ),
            children: [
              ListTile(
                tileColor: const Color(0xff4fb7d0),
                shape: const RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(10)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                title: Text(desc),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              )
            ],
          ),
        ));
  }
}
