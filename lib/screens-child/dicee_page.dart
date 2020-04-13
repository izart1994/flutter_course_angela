import 'dart:math';

import 'package:flutter/material.dart';

class DiceePage extends StatefulWidget {
  const DiceePage({Key key}) : super(key: key);

  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int diceLeftNumber = 1;
  int diceRightNumber = 2;

  void _changeNumber() {
    setState(() {
      diceLeftNumber = Random().nextInt(6) + 1;
      diceRightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: _changeNumber,
            child: Image.asset('assets/images/dice$diceLeftNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: _changeNumber,
            child: Image.asset('assets/images/dice$diceRightNumber.png'),
          ),
        ),
      ],
    ));
  }
}
