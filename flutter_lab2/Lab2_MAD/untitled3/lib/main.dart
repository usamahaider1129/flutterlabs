import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rick'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child:Image.asset('assets/images/rick.jpg')
        ),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
