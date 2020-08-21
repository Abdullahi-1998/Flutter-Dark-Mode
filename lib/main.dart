import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themesapp/themeProvider.dart';
import 'package:themesapp/ChangeThemeApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool storedValue = prefs.getBool('boolValue') ?? false;
  runApp(
    ChangeNotifierProvider(
      builder: (_) => ThemeProvider(isDarkTheme: storedValue),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Changer',
      theme: themeProvider.getThemeData,
      home: ThemeChangerPage(),
    );
  }
}

  




