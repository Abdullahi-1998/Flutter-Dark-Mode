import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeProvider.dart';

class ThemeChangerPage extends StatefulWidget {
  ThemeChangerPage({Key key}) : super(key: key);

  @override
  _ThemeChangerPageState createState() => _ThemeChangerPageState();
}

class _ThemeChangerPageState extends State<ThemeChangerPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Switch(
                  value: themeProvider.isDarkTheme,
                  onChanged: (val) {
                    themeProvider.setThemeData = val;
                  },
                ),
              ],
            ),
          ),
          Image.asset('images/lion.jpg'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                  "A lion is a wild animal which lives in jungle. He is one of the strongest animals. He is called as “King of the Jungle” due to his huge size, power and attacking nature. Today lions are found in sub-Saharan part of Africa and in Asia. They are represented as a symbol of pride, courage, glory and fearlessness. In ancient times, people, especially kings, used to hunt lions and keep their skin to show their courage and vigour to their enemies."),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.person_add), 
              Icon(Icons.favorite), 
              Icon(Icons.photo_camera)],
          )
        ],
      ),
    );
  }
}