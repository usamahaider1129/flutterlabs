import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all((Colors.blue))),
                  onPressed: () {},
                  child: Text('Enabled'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Enabled'),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.volume_down)))
            ]),
          ),
        ),
      ),
    );
  }
}
