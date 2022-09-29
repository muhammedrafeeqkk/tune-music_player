import 'package:flutter/material.dart';

import 'package:music_player/screeens/carlibrary.dart';

import 'package:music_player/shortcuts/shortcuts.dart';
import 'package:music_player/widgets/miniplayer.dart';

class ScreenLibrary extends StatelessWidget {
  const ScreenLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.25),
            child: Text('Liabrary'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 14,
              child: Container(
                child: GridView.count(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: (5 / 4),
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: darkblack),
                        ),
                        Positioned(
                          top: 30,
                          left: 45,
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                      backgroundColor: skyblack,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.0))),
                                      child: Container(
                                        height: screenHeight * 0.25,
                                        width: screenWidth * double.infinity,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: screenHeight * 0.02),
                                              child: Text(
                                                'Create New Playlist',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: white),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                        Icons.playlist_add),
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 15),
                                                    hintText:
                                                        '       playlist name...',
                                                    fillColor: grey,
                                                    filled: true,
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25))),
                                              ),
                                            ),
                                            ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(pink)),
                                                onPressed: () {},
                                                child: Text('ok'))
                                          ],
                                        ),
                                      )),
                                );
                              },
                              icon: Icon(
                                Icons.add,
                                color: grey,
                                size: 60,
                              )),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screencarlibrary())),
                      child: playlistcontainer(context,
                          playbutton: false,
                          iconmore: true,
                          playlistname: "CAR",
                          assetimagepath:
                              'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                    ),
                    playlistcontainer(context,
                        playbutton: false,
                        playlistname: 'GYM',
                        iconmore: true,
                        assetimagepath:
                            'https://images.unsplash.com/photo-1574680096145-d05b474e2155?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTQ1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    child: miniplayer(),
                  ),
                ))
          ],
        ));
  }
}

Widget playlistcontainer(
  BuildContext context, {
  required bool playbutton,
  required bool iconmore,
  required String playlistname,
  required String assetimagepath,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of((context)).size.width;
  return Stack(
    children: [
      Container(
        height: 140,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: white,
            image: DecorationImage(
                image: NetworkImage(assetimagepath), fit: BoxFit.cover)),
      ),
      Positioned(
        bottom: 10,
        left: 30,
        child: Text(
          playlistname,
          style:
              TextStyle(color: grey, fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      Positioned(
        left: 115,
        child: iconmore == true
            ? PopupMenuButton(
                // color: darkblack,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                icon: Icon(
                  Icons.more_vert,
                  color: white,
                  size: 40,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: ((context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(32.0))),
                                        title: Text('Do you Want To Delete'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text('NO'),
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('YES')),
                                        ],
                                      )));
                            },
                            icon: Icon(
                              Icons.delete,
                              color: grey,
                            ),
                            label: Text(
                              'Delete',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => Dialog(
                                    backgroundColor: skyblack,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0))),
                                    child: Container(
                                      height: screenHeight * 0.25,
                                      width: screenWidth * double.infinity,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: screenHeight * 0.02),
                                            child: Text(
                                              'Rename',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  prefixIcon:
                                                      Icon(Icons.playlist_add),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 15),
                                                  hintText: '  Enter Name..',
                                                  fillColor: grey,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25))),
                                            ),
                                          ),
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          pink)),
                                              onPressed: () {},
                                              child: Text('ok'))
                                        ],
                                      ),
                                    )),
                              );
                            },
                            icon: Icon(
                              Icons.drive_file_rename_outline_rounded,
                              color: grey,
                            ),
                            label:
                                Text('Rename', style: TextStyle(color: grey)),
                          )
                        ],
                      ))
                    ])
            // IconButton(
            //     onPressed: () {},

            //   )
            : SizedBox(),
      ),
      Positioned(
          left: 50,
          bottom: 60,
          child: playbutton == true
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle_outline_outlined,
                    color: grey,
                    size: 50,
                  ))
              : SizedBox()),
    ],
  );
}
