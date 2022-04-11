// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'QuestionBrain.dart';

void main() {
  runApp(const MyApp());
  WidgetsApp.debugAllowBannerOverride = false;
  WidgetsApp.debugShowWidgetInspectorOverride = false;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<MyApp> {
  QuestionBank Question = QuestionBank();
  List<Widget> Score = [];

  void compareAnswer(bool answer) {
    bool correctAnswer = Question.CorrectAnswer();
    if (Question.isFinished() == true) {
      Question.reset();
      Score = [];
    } else {
      if (correctAnswer == answer) {
        Score.add(
          const Icon(Icons.check, color: Colors.green),
        );
      } else {
        Score.add(
          const Icon(Icons.close, color: Colors.red),
        );
      }
      setState(() {
        Question.nextQuestions();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.green,foregroundColor: Colors.black,title: const Text("Quizzer"),),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            Question.GetQuestions(),
            style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          const SizedBox(
            height: 100,
          ),
          FlatButton(
            onPressed: () {
              compareAnswer(true);
            },
            child: const Text(
              "True",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            height: 60,
            minWidth: 400,
          ),
          const SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              compareAnswer(false);
            },
            child: const Text(
              "False",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            height: 60,
            minWidth: 400,
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: Score,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      )),
    ));
  }
}
