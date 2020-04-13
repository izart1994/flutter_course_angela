import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class MiCard extends StatelessWidget {
  static const routeName = '/micard';
  const MiCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 50.0,
              backgroundImage: NetworkImage(
                  'https://www.thewowstyle.com/wp-content/uploads/2015/02/Beautiful-Wallpapers-14.jpg'),
            ),
            Text(
              'Muhd Izzat',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              endIndent: 70,
              indent: 70,
              thickness: 2,
              color: Colors.white,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 35.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  '+6011 1491 6154',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 35.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'izart1994@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 18,
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
