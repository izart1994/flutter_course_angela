import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/micard.dart';
import 'screens/dicee.dart';
import 'screens/magicball.dart';
import 'screens/xylophone.dart';
import 'screens/quiz.dart';
import 'screens/destini_challenge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        MiCard.routeName: (context) => MiCard(),
        Dicee.routeName: (context) => Dicee(),
        MagicBall.routeName: (context) => MagicBall(),
        Xylophone.routeName: (context) => Xylophone(),
        Quiz.routeName: (context) => Quiz(),
        DestiniChallange.routeName: (context) => DestiniChallange(),
      },
    );
  }
}
