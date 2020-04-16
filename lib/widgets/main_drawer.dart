import 'package:flutter/material.dart';

import '../screens/micard.dart';
import '../screens/dicee.dart';
import '../screens/magicball.dart';
import '../screens/xylophone.dart';
import '../screens/quiz.dart';
import '../screens/destini_challenge.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 15,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'This App',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildListTile('Home', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Me Card', Icons.person, () {
            Navigator.of(context).pushReplacementNamed(MiCard.routeName);
          }),
          buildListTile('Dicee', Icons.dashboard, () {
            Navigator.of(context).pushReplacementNamed(Dicee.routeName);
          }),
          buildListTile('Magic 8 Ball', Icons.radio_button_checked, () {
            Navigator.of(context).pushReplacementNamed(MagicBall.routeName);
          }),
          buildListTile('Xylophone', Icons.surround_sound, () {
            Navigator.of(context).pushReplacementNamed(Xylophone.routeName);
          }),
          buildListTile('Quiz', Icons.question_answer, () {
            Navigator.of(context).pushReplacementNamed(Quiz.routeName);
          }),
          buildListTile('Destini Challange', Icons.question_answer, () {
            Navigator.of(context).pushReplacementNamed(DestiniChallange.routeName);
          }),
        ],
      ),
    );
  }
}
