import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screeens/screenliabrary.dart';

import 'package:music_player/shortcuts/shortcuts.dart';

class Screennowplaying extends StatelessWidget {
  const Screennowplaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: screenwidth * 0.25),
          child: Text('Now Playing'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.02, left: screenwidth * 0.1),
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenwidth * 0.53,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1555489401-79c274997434?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => ScreenLibrary())),
                      icon: Icon(
                        Icons.playlist_add_outlined,
                        size: 40,
                        color: grey,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.favorite,
                        size: 30,
                        color: pink,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.shuffle,
                        size: 30,
                        color: grey,
                      ))
                ],
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.01,
              ),
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
          SizedBox(
            height: screenHeight * 0.10,
          ),
          Container(
            width: screenwidth * 0.87,
            child: ProgressBar(
              progress: Duration(
                minutes: 2,
              ),
              buffered: Duration(minutes: 3),
              total: Duration(minutes: 5),
              progressBarColor: pink,
              thumbColor: pink,
              baseBarColor: grey,
              thumbGlowColor: pink,
              bufferedBarColor: white,
              timeLabelTextStyle: TextStyle(color: white),
              onSeek: (duration) {
                print('User selected a new time: $duration');
              },
            ),
          ),
          // Slider(value: 19, onChanged:),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Column(
            children: [
              Container(
                width: screenwidth * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: darkblack,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            color: pink,
                            size: 35,
                          )),
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: pink,
                      child: Padding(
                        padding: EdgeInsets.only(right: 2),
                        child: Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.pause,
                                size: 35,
                              )),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: darkblack,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            color: pink,
                            size: 35,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.10,
          ),
          Text(
            'NEXT',
            style: TextStyle(
                color: purewhite, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Text(
            'Adipoli Kaliyanam',
            style: TextStyle(
                color: purewhite, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              'Vijay Ysudas',
              style: TextStyle(
                  color: grey, fontSize: 14, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}

//  widget audioPlayerbuilderRealtimePlayingInfos(
//                   builder: (context, info) {
//                 final _duration = info.current!.audio.duration;
//                 final _position = info.currentPosition;
//                 return ProgressBar(
//                   progress: _position,
//                   total: _duration,
//                   progressBarColor: kBlue,
//                   baseBarColor: kDarkBlue,
//                   thumbColor: kBlue,
//                   bufferedBarColor: Colors.white.withOpacity(0.24),
//                   barHeight: 7.0,
//                   thumbRadius: 9.0,
//                   onSeek: (duration) {
//                     widget.audioPlayer.seek(duration);
//                   },
//                   timeLabelPadding: 10,
//                   timeLabelTextStyle: const TextStyle(
//                     color: kLightBlue,
//                     fontSize: 15,
//                   ),
//                 );
//               }),
