import 'package:flutter/material.dart';
import 'package:trips_app/button.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String descriptionDummy =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

    final description = Container(
        margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Text(
          descriptionDummy,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575a)),
        ));

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star),
      color: Color(0xFFf2C611),
    );

    final title = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
        child: Text(
          'Duwili Ella',
          style: TextStyle(
              fontFamily: "Lato", fontSize: 35.0, fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ),
      ),
      Row(children: <Widget>[star, star, star, star, star])
    ]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title, description, Button()],
    );
  }
}
