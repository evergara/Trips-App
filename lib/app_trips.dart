import 'package:flutter/material.dart';
import 'package:trips_app/Home_trips.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';

class AppTrips extends StatefulWidget {
  AppTrips({Key? key}) : super(key: key);
  @override
  _AppTripsState createState() => _AppTripsState();
}

class _AppTripsState extends State<AppTrips> {
  int indexTap = 0;
  final List<Widget> widgets = [
    HomeTrips(),
    SearchStrips(),
    ProfileStrips(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: OnTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('""')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text('""')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('""'))
            ]),
      ),
    );
  }

  void OnTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }
}
