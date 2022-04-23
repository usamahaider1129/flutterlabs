import 'package:flutter/material.dart';

class Con_H_W_C_W extends StatelessWidget {
  dynamic? Color;
  final newChild;

  Con_H_W_C_W({required this.Color, required this.newChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color, borderRadius: BorderRadius.circular(10.0)),
      height: 200,
      width: 170,
      child: newChild,
    );
  }
}
