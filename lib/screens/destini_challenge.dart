import 'package:flutter/material.dart';

import '../screens-child/destini_challange_page.dart';
import '../widgets/main_drawer.dart';

class DestiniChallange extends StatelessWidget {
  static const routeName = '/destinichallange';
  const DestiniChallange({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destini Challange'),
        backgroundColor: Colors.blue.shade500,
      ),
      drawer: MainDrawer(),
      body: DestiniChallangePage(),
    );
  }
}
