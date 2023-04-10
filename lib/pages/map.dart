import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapDeneme extends StatelessWidget {
  const MapDeneme({super.key});

  asdasd() {
    MapsLauncher.launchCoordinates(
        37.4220041, -122.0862462, 'Google Headquarters are here');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  asdasd();
                },
                child: Text('asdasdsad'))
          ],
        ));
  }
}
