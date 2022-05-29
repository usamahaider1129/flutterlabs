import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'location.dart';

class networkhelper extends StatefulWidget {
  const networkhelper({Key? key}) : super(key: key);

  @override
  State<networkhelper> createState() => _networkhelperState();
}

class _networkhelperState extends State<networkhelper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: ElevatedButton(
              onPressed: () async {
                http.Response res = await http.get(Uri.parse(
                    'http://api.openweathermap.org/data/2.5/weather?units=metric&lat=31&lon=74&appid=931e8bdeccb205992200128a5f3a3e95'));
                print(res.body);
                jsonDecode(res.body);
                dynamic jsondata = res.body;
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return location(jsondata);
                }));
              },
              child: Text('Get LOcation')),
        ),
      ),
    );
  }
}
