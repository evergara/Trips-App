import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star),
      color: Color(0xFFf2C611),
    );
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/people.jpg'))));

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        "Excelentes playas",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(
          "1 review 5 photos",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
        ),
      ),
    ]);

    final username = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        "Emerson",
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 7.0),
      ),
    );

    final UserDatail = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[username, userInfo, userComment]);

    return Row(children: <Widget>[photo, UserDatail]);
  }
}
