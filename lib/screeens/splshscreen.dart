import 'package:flutter/material.dart';
import 'package:music_player/screeens/home.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 4));
    () {};
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => const myhome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: AssetImage(
          'assets/images/LOGO2.png',
        ),
      )),
      backgroundColor: Colors.black,
    );
  }
}
