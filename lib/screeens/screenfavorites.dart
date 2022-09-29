import 'package:flutter/material.dart';
import 'package:music_player/screeens/screenliabrary.dart';
import 'package:music_player/shortcuts/shortcuts.dart';
import 'package:music_player/widgets/miniplayer.dart';

import '../widgets/homepagewidgets.dart';

class ScreenFavorites extends StatelessWidget {
  ScreenFavorites({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.25),
          child: Text('Favorite'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              containerinicon(context, icon: Icons.favorite, color: pink),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Containerwithphoto(context),
              ),
              containerinicon2(context,
                  icon: Icons.playlist_add_outlined, color: white),
            ],
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Bella Ciao',
                  style: TextStyle(
                      color: purewhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Arthur Coan',
                  style: TextStyle(
                      color: grey, fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          allsongs(context),
          Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: liteblack,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListView(
                    children: [
                      musics(context,
                          iconwant: false,
                          isithomepage: false,
                          musicname: 'Adipoli Kaiyanam',
                          artist: 'Vijay Yesudas'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Dua',
                          artist: 'Sushin Shyam'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Arabic Kuthu',
                          artist: 'Anirudh'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Malyan Kunju',
                          artist: 'A.R Rahman'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Bella Ciao',
                          artist: 'Arthur Coan'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'My Plan',
                          artist: 'Robart'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Despacito',
                          artist: 'Kunjaani'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Adipoli Kaiyanam',
                          artist: 'Vijay Yesudas'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Dua',
                          artist: 'Sushin Shyam'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Arabic Kuthu',
                          artist: 'Anirudh'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Malyan Kunju',
                          artist: 'A.R Rahman'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Bella Ciao',
                          artist: 'Arthur Coan'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'My Plan',
                          artist: 'Robart'),
                      musics(context,
                          isithomepage: false,
                          iconwant: false,
                          musicname: 'Despacito',
                          artist: 'Kunjaani')
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: miniplayer(),
              ))
        ],
      ),
    );
  }
}

Widget containerinicon(BuildContext context, {icon, color}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of((context)).size.width;

  return Stack(
    children: [
      Container(
          height: screenHeight * 0.04,
          width: screenWidth * 0.09,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: darkblack),
          // color: darkblack,
          child: Icon(
            icon,
            color: color,
          )),
    ],
  );
}

Widget Containerwithphoto(
  BuildContext context,
) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of((context)).size.width;

  return Container(
    width: screenWidth * .43,
    height: screenHeight * .18,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1631372833883-9aef0a5ce0f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
            fit: BoxFit.cover)),
  );
}

Widget containerinicon2(BuildContext context, {required IconData icon, color}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of((context)).size.width;

  return Stack(
    children: [
      Container(
          height: screenHeight * 0.04,
          width: screenWidth * 0.09,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: darkblack),
          // color: darkblack,
          child: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenLibrary())),
            icon: Icon(icon),
            color: color,
          )
          // Icon(
          //   icon,

          ),
    ],
  );
}
