import 'package:flutter/material.dart';

import 'package:music_player/screeens/splshscreen.dart';
import 'package:music_player/shortcuts/shortcuts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: darkblack,
        ),
        scaffoldBackgroundColor: skyblack,
      ),
      home: const splashscreen(),
    );
  }
}
