import 'package:flutter/material.dart';

import '../data/story_brain.dart';

class DestiniChallangePage extends StatefulWidget {
  _DestiniChallangePageState createState() => _DestiniChallangePageState();
}

class _DestiniChallangePageState extends State<DestiniChallangePage> {
  StoryBrain _story = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  _story.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: _story.buttonShouldBeVisible(),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _story.nextStory(1);
                    });
                  },
                  color: Colors.red,
                  child: Text(
                    _story.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _story.nextStory(2);
                  });
                },
                color: Colors.blue,
                child: Text(
                  _story.getChoice2(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
