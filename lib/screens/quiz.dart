import 'package:flutter/material.dart';

import '../screens-child/quiz_page.dart';
import '../widgets/main_drawer.dart';

class Quiz extends StatelessWidget {
  static const routeName = '/quiz';
  const Quiz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.pink.shade600,
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}
