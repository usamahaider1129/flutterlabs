import 'dart:html';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const geolocator());
}

class geolocator extends StatefulWidget {
  const geolocator({Key? key}) : super(key: key);

  @override
  State<geolocator> createState() => _geolocatorState();
}

class _geolocatorState extends State<geolocator> {
  var permissions;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcurrentposition();
  }

  void getcurrentposition() async {
    permissions = Geolocator.checkPermission();
    if (permissions == LocationPermission.denied) {
      permissions = Geolocator.requestPermission();
      if (permissions == LocationPermission.denied) {
        print("Location can not be accessed");
      }
    }
    Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print(pos.longitude);
    print(pos.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Location')),
        body: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/s2');
              },
              child: Text("Get location"))
        ]),
      ),
    );
  }
}
