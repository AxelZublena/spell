import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class ExpandableDefis extends StatelessWidget {
  final String title;
  final String pts;
  final String desc;

  const ExpandableDefis(
      {Key? key,
      this.title = "WEL 1",
      this.pts = "0 pts",
      this.desc = "Aucune description fournis"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 0.48,
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
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Row(
                children: [
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18,
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
                            fontSize: 18,
                            fontFamily: "Fira Sans",
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcb5a9f),
                            letterSpacing: 0.0),
                      ),
                    ],
                  ),
                  const Expanded(
                      child: SizedBox(
                    width: double.infinity,
                  )),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        pts,
                        style: TextStyle(
                            fontSize: 18,
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
                        pts,
                        style: const TextStyle(
                            fontSize: 18,
                            fontFamily: "Fira Sans",
                            fontWeight: FontWeight.bold,
                            color: Color(0xffcb5a9f),
                            letterSpacing: 0.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Text(
            //   title,
            //   textAlign: TextAlign.center,
            // ),
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
