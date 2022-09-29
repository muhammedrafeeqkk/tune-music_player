import 'package:flutter/material.dart';

import 'package:music_player/shortcuts/shortcuts.dart';

import '../screeens/nowplaying.dart';

class miniplayer extends StatelessWidget {
  const miniplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Screennowplaying())),
      child: Container(
        height: screenHeight * 0.112,
        width: screenwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          color: darkblack,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: screenHeight * 0.07,
                width: screenwidth * 0.16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1555489401-79c274997434?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                        ),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenwidth * 0.07,
                    vertical: screenHeight * 0.02),
                child: Column(
                  children: [
                    Text(
                      'My Plan',
                      style: TextStyle(
                          color: purewhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Robart',
                      style: TextStyle(
                          color: grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: pink,
                  )),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous_outlined,
                            color: white,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_outline),
                        color: white,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next_outlined,
                            color: white,
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// showMiniPlayer({
//   required BuildContext context,
//   required int index,
//   required List songList,
//   // required AssetsAudioPlayer audioPlayer,
// }) {
//   return showBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (ctx) {
//         return MiniPlayer(
          
//           // audioPlayer: audioPlayer,
//         );
//       });
// }