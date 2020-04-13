import 'package:flutter/material.dart';

import '../screens-child/ball_page.dart';
import '../widgets/main_drawer.dart';

class MagicBall extends StatelessWidget {
  static const routeName = '/magicball';
  const MagicBall({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      drawer: MainDrawer(),
      body: BallPage(),
    );
  }
}
