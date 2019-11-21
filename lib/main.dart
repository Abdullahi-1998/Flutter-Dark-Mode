import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themesapp/themeProvider.dart';
import 'package:themesapp/ChangeThemeApp.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      builder: (_) => ThemeProvider(isLightTheme: true),
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

  




