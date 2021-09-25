import 'package:flutter/material.dart';
import 'package:trips_app/floatingActionButton.dart';

class CardImage extends StatelessWidget {
  const CardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 245.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/beach.jpeg'),
              scale: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
