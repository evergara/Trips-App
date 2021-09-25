import 'package:flutter/material.dart';
import 'package:trips_app/ReviewList.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      ListView(
        children: <Widget>[DescriptionPlace(), ReviewList()],
      ),
      HeaderAppBar(),
    ]);
  }
}
