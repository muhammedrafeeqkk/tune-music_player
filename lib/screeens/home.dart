import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screeens/screenfavorites.dart';
import 'package:music_player/screeens/screenliabrary.dart';
import 'package:music_player/screeens/screenrecent.dart';
import 'package:music_player/screeens/userpage.dart';

import 'package:music_player/shortcuts/shortcuts.dart';
import 'package:music_player/widgets/homepagewidgets.dart';
import 'package:music_player/widgets/drewbaritems.dart';
import 'package:music_player/widgets/miniplayer.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  final textController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(190),
          ),
        ),
        backgroundColor: grey,
        width: screenwidth * 0.61,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.25),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.65,
                child: Column(
                  children: [
                    drewbaritems1(text: 'NOTIFICATION'),
                    sizedspace(context),
                    drewbaritems1(text: "DARK MODE"),
                    sizedspace(context),
                    drewbaritems2(context, text3: 'About'),
                    sizedspace(context),
                    drewbaritems2(context, text3: 'Privacy'),
                    sizedspace(context),
                    drewbaritems2(context, text3: 'License'),
                    sizedspace(context),
                    drewbaritems2(context, text3: 'share'),
                  ],
                ),
              ),
            ),
            Text(
              'VERSION\n    0.0.1',
              style: TextStyle(color: liteblack, fontSize: 10),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: darkblack,
        title: Padding(
          padding: EdgeInsets.only(left: screenwidth * 0.25),
          child: Text('Home'),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: grey),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(screenwidth * 0.02),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimSearchBar(
                              color: skyblack,
                              closeSearchOnSuffixTap: true,
                              autoFocus: true,
                              helpText: "Search Your Song !!!!",
                              style: TextStyle(color: white),
                              width: 200,
                              textController: textController,
                              onSuffixTap: () {
                                setState(() {
                                  textController.clear();
                                });
                              },
                            ),
                            GestureDetector(
                              onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => userscreen())))),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/avatharlogo.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
              flex: 12,
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Column(
                            children: [
                              SizedBox(height: screenHeight * 0.03),
                              Text(
                                'TO PLAY',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: screenwidth * 0.18),
                                child: Text(
                                  'without',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500,
                                      color: grey),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: screenwidth * 0.05),
                                child: const Text(
                                  'PASSION',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        SizedBox(
                          height: screenHeight * 0.19,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.0,
                                horizontal: screenwidth * 0.015),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScreenFavorites())),
                                  child: const shortcutwidgets(
                                    imageurl:
                                        'https://images.unsplash.com/photo-1517409091671-180985f2ca15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                                    text: 'MY\nFAVORITE',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              ScreenRecent()))),
                                  child: shortcutwidgets(
                                    imageurl:
                                        'https://images.unsplash.com/photo-1549349807-4575e87c7e6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=442&q=80',
                                    text: 'RECENT',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScreenLibrary())),
                                  child: shortcutwidgets(
                                    imageurl:
                                        'https://images.unsplash.com/photo-1628288277962-e4dbf53f9aac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                    text: 'MY\nLIBRARY',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: screenwidth * 0.62),
                          child: allsongs(context),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenwidth * 0.01),
                          child: Container(
                            width: screenwidth * 1,
                            decoration: BoxDecoration(
                                color: liteblack,
                                borderRadius: BorderRadius.circular(20)),
                            child: ListView.builder(
                              itemCount: 23,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return musics(context,
                                   
                                    isithomepage: true,
                                    iconwant: true,
                                    conditionalicon: true,
                                    musicname: 'Dua',
                                    artist: 'Sushin Shyam');
                              },
                            ),

                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Arabic Kuthu',
                            //     artist: 'Anirudh'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Malyan Kunju',
                            //     artist: 'A.R Rahman'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Bella Ciao',
                            //     artist: 'Arthur Coan'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'My Plan',
                            //     artist: 'Robart'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Despacito',
                            //     artist: 'Kunjaani'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Adipoli Kaiyanam',
                            //     artist: 'Vijay Yesudas'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Dua',
                            //     artist: 'Sushin Shyam'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Arabic Kuthu',
                            //     artist: 'Anirudh'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Malyan Kunju',
                            //     artist: 'A.R Rahman'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Bella Ciao',
                            //     artist: 'Arthur Coan'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'My Plan',
                            //     artist: 'Robart'),
                            // musics(context,
                            //     isithomepage: true,
                            //     iconwant: true,
                            //     conditionalicon: true,
                            //     musicname: 'Despacito',
                            //     artist: 'Kunjaani'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [miniplayer()],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
