import 'package:flutter/material.dart';
import 'Trip.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip("Ben Nevis", 3000.00, "Highlands"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
    Trip("Ben Macdui", 2750.00, "Cairngorms"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(trip.title, style: new TextStyle(fontSize: 37.5),),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(trip.height.toString(), style: new TextStyle(fontSize: 22.5),),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(trip.location, style: new TextStyle(fontSize: 22.5),),
                    Spacer(),
                    Icon(Icons.my_location_rounded),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}