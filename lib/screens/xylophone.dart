import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import '../widgets/main_drawer.dart';

class Xylophone extends StatelessWidget {
  static const routeName = '/xylophone';
  const Xylophone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _button(Colors.blue, 1),
            _button(Colors.yellow, 2),
            _button(Colors.pink, 3),
            _button(Colors.lightGreen, 4),
            _button(Colors.orange, 5),
            _button(Colors.purple, 6),
            _button(Colors.grey, 7),
          ],
        ),
      ),
    );
  }

  Widget _button(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: null,
      ),
    );
  }
}
