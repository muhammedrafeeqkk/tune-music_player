import 'package:flutter/material.dart';
import 'package:music_player/screeens/deleting.dart';
import 'package:music_player/screeens/nowplaying.dart';
import 'package:music_player/screeens/screenfavorites.dart';
import 'package:music_player/screeens/screenliabrary.dart';
import 'package:music_player/shortcuts/shortcuts.dart';

import 'miniplayer.dart';

// ignore: camel_case_types
class shortcutwidgets extends StatelessWidget {
  const shortcutwidgets({
    Key? key,
    required this.imageurl,
    required this.text,
  }) : super(key: key);

  final String imageurl;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(imageurl), fit: BoxFit.cover)),
          height: screenHeight * 0.40,
          width: screenWidth * 0.33,
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            text,
            style: TextStyle(
                color: grey, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

musics(
  BuildContext context, {
  required musicname,
  required artist,
  bool? conditionalicon,
  required bool iconwant,
  required bool isithomepage,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return isithomepage == true
      ? GestureDetector(
          // onTap: (() => showModalBottomSheet(
          //     context: context, builder: (context) => miniplayer())),
          // onTap: (() => showBottomSheet(
          //     context: context, builder: (context) => miniplayer())),

          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Screennowplaying())),
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            title: Text(
              musicname,
              style: TextStyle(
                  color: purewhite, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              artist,
              style: TextStyle(
                  color: grey, fontSize: 12, fontWeight: FontWeight.w400),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: darkblack),
                    child: Icon(
                      Icons.play_arrow,
                      color: purewhite,
                    )),
                iconwant == true
                    ? conditionalicon == true
                        ? PopupMenuButton(
                            color: darkblack,
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: white,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                      child: Column(
                                    children: [
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite,
                                            color: pink,
                                          ),
                                          label: Text(
                                            'Favorite',
                                            style: TextStyle(color: grey),
                                          )),
                                      TextButton.icon(
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ScreenLibrary())),
                                          icon: Icon(
                                            Icons.playlist_add,
                                            color: grey,
                                          ),
                                          label: Text(
                                            'Add library',
                                            style: TextStyle(color: grey),
                                          )),
                                    ],
                                  ))
                                ])
                        : IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(32.0))),
                                        title: Text(
                                          'Are You Sure',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'NO'),
                                            child: const Text(
                                              'NO',
                                            ),
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('YES'))
                                        ],
                                        // titlePadding:
                                        //     EdgeInsets.only(top: screenHeight * 0.06),
                                      ));
                            },
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: white,
                            ),
                          )
                    : SizedBox(),
              ],
            ),
          ))
      //withoutHomepage
      : ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
          title: GestureDetector(
            onTap: (() => Navigator.push(
                context, MaterialPageRoute(builder: (context) => mydelete()))),
            child: Text(
              musicname,
              style: TextStyle(
                  color: purewhite, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          subtitle: GestureDetector(
            onTap: (() => Navigator.push(
                context, MaterialPageRoute(builder: (context) => mydelete()))),
            child: Text(
              artist,
              style: TextStyle(
                  color: grey, fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: darkblack),
                  child: Icon(
                    Icons.play_arrow,
                    color: purewhite,
                  )),
              iconwant == true
                  ? conditionalicon == true
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert_outlined,
                            color: white,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text(
                                        'Are You Sure',
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'NO'),
                                          child: const Text('NO'),
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text('YES'))
                                      ],
                                      // titlePadding:
                                      //     EdgeInsets.only(top: screenHeight * 0.06),
                                    ));
                          },
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: white,
                          ),
                        )
                  : SizedBox(),
            ],
          ),
        );
}

Widget allsongs(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.all(screenHeight * 0.02),
    child: Text(
      'All Songs',
      style: TextStyle(color: white, fontSize: 17, fontWeight: FontWeight.w500),
    ),
  );
}
