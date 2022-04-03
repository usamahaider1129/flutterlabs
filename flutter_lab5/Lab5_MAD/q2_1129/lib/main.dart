import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Voice());
}

class Voice extends StatefulWidget {
  @override
  State<Voice> createState() => _VoiceState();
}

class _VoiceState extends State<Voice> {
  AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note1.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.red,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note2.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.deepOrange,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note3.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.black,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note4.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.pink,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note5.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note6.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.green,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  audioCache.play('note7.wav');
                },
                height: double.infinity,
                child: Text(''),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
