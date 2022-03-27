import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Mobile App Dev lab'),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Text('You have pressed this button 0 times'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

