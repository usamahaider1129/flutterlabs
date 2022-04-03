import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: BallPage()));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("AskMe Anything"),
        ),
        body: Container(
          color: Colors.blue,
          child: BallChange(),
        ),
      ),
    );
  }
}

class BallChange extends StatefulWidget {
  @override
  State<BallChange> createState() => _BallChangeState();
}

class _BallChangeState extends State<BallChange> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
            child: FlatButton(
                onPressed: () {
                  RandomGenerator();
                  print("I Clicked");
                },
                child: Image.asset('images/ball$randomNumber.png')))
      ]),
    );
  }

  RandomGenerator() {
    setState(() {
      randomNumber = Random().nextInt(4) + 1;
    });
  }
}
