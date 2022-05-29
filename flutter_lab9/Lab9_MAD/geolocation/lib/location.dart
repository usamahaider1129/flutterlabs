import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class location extends StatefulWidget {
  location(this.jsondata);
  final String jsondata;
  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  dynamic? temp;
  dynamic? city;
  dynamic? icon;
  @override
  void initState() {
    super.initState();
    Update(widget.jsondata);
  }

  void Update(dynamic weatherdata) {
    weatherdata = jsonDecode(weatherdata);
    temp = weatherdata['main']['temp'];
    city = weatherdata['name'];
    icon = weatherdata['weather'][0]['icon'];
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('location'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text(temp.toString()),
                Text(city.toString()),
                Icon(Icons.sunny),
              ],
            ),
          ),
        ));
  }
}
