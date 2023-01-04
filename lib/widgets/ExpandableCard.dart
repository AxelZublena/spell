import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class ExpandableCard extends StatelessWidget {
  final String title;
  final String desc;
  final double size;
  final String font;

  const ExpandableCard({
    Key? key,
    this.title = "",
    this.desc = "Aucunes infos disponibles pour le moment.",
    this.size = 40,
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
              padding: const EdgeInsets.symmetric(vertical: 10),
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
                        letterSpacing: 2.0),
                  ),
                  // Solid text as fill.
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: size,
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffcb5a9f),
                        letterSpacing: 2.0),
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
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              )
            ],
          ),
        ));
  }
}
