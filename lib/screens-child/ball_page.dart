import 'dart:math';

import 'package:flutter/material.dart';

class BallPage extends StatefulWidget {
  BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.0,
        horizontal: 20.0,
      ),
      color: Colors.blue.shade600,
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset('assets/images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
