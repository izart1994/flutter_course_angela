import 'package:flutter/material.dart';

import '../screens-child/dicee_page.dart';
import '../widgets/main_drawer.dart';

class Dicee extends StatelessWidget {
  static const routeName = '/dicee';
  const Dicee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      drawer: MainDrawer(),
      body: DiceePage(),
    );
  }
}
