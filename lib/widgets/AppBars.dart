import 'package:flutter/material.dart';
import 'package:spell/quesako.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
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
            icon: const ImageIcon(
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

class RegularAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const RegularAppBar({
    Key? key,
    this.title = " ",
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Builder(
        builder: (BuildContext context) {
          return TextButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Image.asset(
                'images/oeil.png',
                width: 80,
              ));
        },
      ),
      actions: <Widget>[
        Center(
          child: Padding(padding: EdgeInsets.all(8), child: Text(title)),
        )
      ],
    );
  }
}
