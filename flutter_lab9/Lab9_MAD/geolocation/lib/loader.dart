import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'networkhelper.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) => gotoLocation());
  }

  gotoLocation() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => networkhelper())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        SpinKitFadingCircle(itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    }));
  }
}
