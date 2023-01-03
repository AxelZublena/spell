import 'package:flutter/material.dart';

import '../quesako.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final double size;
  final StatelessWidget next;

  const SecondaryButton({
    Key? key,
    this.text = "",
    this.size = 20,
    this.next = const QuesakoRoute(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4fb7d0),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
                      // Stroked text as border.
                      // Solid text as fill.
                      child: Text(
                    text,
                    style: TextStyle(
                      fontSize: size,
                      fontFamily: 'Fira Sans',
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      // color: const Color(0xffffffff),
                    ),
                  )),
                )
              ],
            )));
  }
}
