import 'package:flutter/material.dart';

class child_w_h extends StatelessWidget {
  child_w_h({required this.icon, required this.onPressed});

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 3.0,
      constraints: BoxConstraints.tightFor(
        width: 20.0,
        height: 20.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
