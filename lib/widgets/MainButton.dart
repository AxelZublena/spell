import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';
import 'package:spell/quesako.dart';

class MainButton extends StatelessWidget {
  final String text;
  final String infoDesc;
  final double size;
  final StatelessWidget next;
  final String font;

  const MainButton({
    Key? key,
    this.text = "",
    this.infoDesc = "",
    this.size = 40,
    this.font = "Imbue",
    this.next = const QuesakoRoute(),
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
              contentPadding: const EdgeInsets.only(right: 8),
              minVerticalPadding: 0,
              duration: const Duration(milliseconds: 120),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => next),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: size,
                          fontFamily: font,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                          letterSpacing: 6.0),
                    ),
                    // Solid text as fill.
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: size,
                          fontFamily: font,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffcb5a9f),
                          letterSpacing: 6.0),
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Image.asset('images/oeil-blanc.png'),
                ),
              ),
              rotateTrailing: false,
              children: [
                ListTile(
                  tileColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  title: Text(infoDesc),
                )
              ],
            )));
  }
}
