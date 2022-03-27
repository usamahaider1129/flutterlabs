import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        appBar: AppBar(
          title: Text('Mobile App Dev lab'),
          backgroundColor: Colors.brown,

        ),
        body: Center(
          child: Text('You have pressed the button 0 times'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}


