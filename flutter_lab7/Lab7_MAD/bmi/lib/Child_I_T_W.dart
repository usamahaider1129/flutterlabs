import 'package:flutter/cupertino.dart';

class Child_I_T_W extends StatelessWidget {
  dynamic? nicon;
  String? nText;

  Child_I_T_W({required this.nicon, required this.nText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nicon,
        Text(
          nText.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
