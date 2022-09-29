import 'package:flutter/material.dart';

import 'package:music_player/screeens/screenliabrary.dart';
import 'package:music_player/shortcuts/shortcuts.dart';
import 'package:music_player/widgets/miniplayer.dart';

import '../widgets/homepagewidgets.dart';

class screencarlibrary extends StatelessWidget {
  screencarlibrary({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: screenwidth * 0.25),
          child: Text('Library'),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    playlistcontainer(context,
                        playbutton: true,
                        iconmore: false,
                        assetimagepath:
                            'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                        playlistname: 'CAR'),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 50,
                        )),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280),
            child: allsongs(context),
          ),
          Expanded(
              flex: 15,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenwidth * 0.02, right: screenwidth * 0.02),
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
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Adipoli Kaiyanam',
                          artist: 'Vijay Yesudas'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Dua',
                          artist: 'Sushin Shyam'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Arabic Kuthu',
                          artist: 'Anirudh'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Malyan Kunju',
                          artist: 'A.R Rahman'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Bella Ciao',
                          artist: 'Arthur Coan'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'My Plan',
                          artist: 'Robart'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Despacito',
                          artist: 'Kunjaani'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Adipoli Kaiyanam',
                          artist: 'Vijay Yesudas'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Dua',
                          artist: 'Sushin Shyam'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Arabic Kuthu',
                          artist: 'Anirudh'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Malyan Kunju',
                          artist: 'A.R Rahman'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Bella Ciao',
                          artist: 'Arthur Coan'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'My Plan',
                          artist: 'Robart'),
                      musics(context,
                          isithomepage: true,
                          iconwant: true,
                          conditionalicon: false,
                          musicname: 'Despacito',
                          artist: 'Kunjaani')
                    ],
                  ),
                ),
              )),
          Expanded(flex: 4, child: miniplayer())
        ],
      ),
    );
  }
}
