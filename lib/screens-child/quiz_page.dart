import 'package:flutter/material.dart';

import '../data/quiz_master.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int number = 0;

  QuizMaster quiz = QuizMaster();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz.quizMaster[number].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool quizAnswer = quiz.quizMaster[number].questionAnswer;

                if (quizAnswer == true) {
                  print('true');
                } else {
                  print('false');
                }

                setState(() {
                  number++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool quizAnswer = quiz.quizMaster[number].questionAnswer;

                if (quizAnswer == false) {
                  print('true');
                } else {
                  print('false');
                }

                setState(() {
                  number++;
                });
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
