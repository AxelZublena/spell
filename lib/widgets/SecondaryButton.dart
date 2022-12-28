import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final double size;

  const SecondaryButton({
    Key? key,
    this.text = "",
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff4fb7d0),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: const BorderSide(width: 1.0, color: Colors.black),
            ),
            onPressed: () {},
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
