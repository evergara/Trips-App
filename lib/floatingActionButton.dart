import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      tooltip: 'Fav',
      mini: true,
      child: Icon(
        Icons.favorite_border,
      ),
      onPressed: onPressedFav,
    );
  }

  void onPressedFav() {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Agregue a favoritos')));
  }
}
