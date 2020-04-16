import 'package:flutter/material.dart';

import '../screens-child/destini_challange_page.dart';
import '../widgets/main_drawer.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

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
