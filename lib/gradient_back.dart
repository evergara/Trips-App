import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  const GradientBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp),
        ),
        child: Text(
          'Popular',
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        alignment: Alignment(-0.9, -0.6));
  }
}