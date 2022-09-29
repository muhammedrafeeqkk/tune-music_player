// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../shortcuts/shortcuts.dart';

class userscreen extends StatelessWidget {
  const userscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.11, left: screenwidth * 0.08),
              child: Text(
                'HEY....',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenwidth * 0.12),
              child: Text(
                'welcome',
                style: TextStyle(
                    fontSize: 21, fontWeight: FontWeight.w500, color: grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenwidth * 0.08),
              child: Text(
                'TO',
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w700,
                    color: Colors.white12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenwidth * 0.35, top: screenHeight * 0.05),
              child: Image(image: AssetImage('assets/images/LOGO2.png')),
            ),
            SizedBox(
              height: screenHeight * 0.11,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    prefixIcon: Icon(Icons.person),
                    hintText: '        your name...',
                    fillColor: grey,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              child: Text('submit'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(pink),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
