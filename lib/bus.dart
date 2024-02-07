import 'package:flutter/material.dart';

void main() {
  runApp(BusStopListApp());
}

class BusStopListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title:'Material App',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:Text('Bus Stops')
        ),
        body: BusStopListScreen(),
        ),
      );
  }
}

class BusStopListScreen extends StatelessWidget {
  final List<BusStop> busStops = [
    BusStop(busNumber: '9', stopName: 'City Hall'),
    BusStop(busNumber: '71', stopName: 'Yio Chu Kang'),
    BusStop(busNumber: '969', stopName: 'Khatib'),
    BusStop(busNumber: '5', stopName: 'Simei'),
    BusStop(busNumber: '105', stopName: 'Library'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: busStops.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(busStops[index].stopName),
            subtitle: Text('Bus Number: ${busStops[index].busNumber}'),
            onTap: () {
              // Add functionality to navigate to bus stop details page
            },
          );
        },
      ),
    );
  }
}

class BusStop {
  final String busNumber;
  final String stopName;

  BusStop({this.busNumber, this.stopName});
}
