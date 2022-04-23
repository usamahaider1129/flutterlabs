import 'package:flutter/material.dart';
import 'Child_I_T_W.dart';
import 'Con_H_W_C_W.dart';

void main() {
  runApp(MyApp());
}

enum gender { male, female }

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var Sgender;
  double Changedvalue = 180;

  @override
  Widget build(BuildContext context) {
    var con_h_w_c_w = Con_H_W_C_W;
    return MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData.dark().copyWith(accentColor: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Male Selected");
                          Sgender = "male";
                          setState(() {
                            Sgender = gender.male;
                          });
                        },
                        child: Con_H_W_C_W(
                          Color: Sgender == gender.male
                              ? Colors.black
                              : Colors.blue,
                          newChild: Child_I_T_W(
                              nicon: Icon(
                                Icons.male,
                                size: 50,
                              ),
                              nText: "Male"),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Female Selected");
                          Sgender = "female";
                          setState(() {
                            Sgender = gender.female;
                          });
                        },
                        child: Con_H_W_C_W(
                          Color: Sgender == gender.female
                              ? Colors.black
                              : Colors.blue,
                          newChild: Child_I_T_W(
                              nicon: Icon(
                                Icons.female,
                                size: 50,
                              ),
                              nText: "Female"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Con_H_W_C_W(
                  Color: Color((0xff0a021)),
                  newChild: Center(
                    child: Column(
                      children: [
                        Expanded(
                            child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbColor: Colors.lightBlueAccent,
                                    overlayColor: Colors.white,
                                    activeTrackColor: Colors.green,
                                    inactiveTrackColor: Colors.red,
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 15.0),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 15.0)),
                                child: Slider(
                                  label: Changedvalue.round().toString(),
                                  divisions: 140,
                                  min: 180,
                                  max: 320,
                                  value: Changedvalue,
                                  onChanged: (value) {
                                    print(value.round());
                                    setState(() {
                                      Changedvalue = value;
                                    });
                                  },
                                ))),
                        Text("Slider"),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
