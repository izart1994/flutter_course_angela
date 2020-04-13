import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("I am rich"),
        backgroundColor: Colors.grey[700],
      ),
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage('assets/images/diamond.png'),
          ),
        ),
      ),
    );
  }
}
