import 'package:flutter/material.dart';
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
    this.size = 50,
    this.font = "Imbue",
    this.next = const QuesakoRoute(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: const BorderSide(width: 1.0, color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => next),
              );
            },
            child: Row(
              children: [
                Expanded(
                    child: Center(
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
                ))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => SimpleDialog(
                              backgroundColor: const Color(0xff4fb7d0),
                              contentPadding:
                                  EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                              children: [
                                Center(
                                    child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 16),
                                  child: Text(
                                    infoDesc,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                          child:
                              Image.asset('images/oeil-blanc.png', width: 50),
                        )))
              ],
            )));
  }
}
