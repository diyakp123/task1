import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class audioPlayer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => audioPlayerState();
}

class audioPlayerState extends State<audioPlayer> {
  AudioPlayer player = AudioPlayer();
  bool isplay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
        title: Text("Audio player"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Press to Play",
              style: TextStyle(fontSize: 20),
            ),
          ),
          //       ElevatedButton(child:
          // Text("press me"),
          // onPressed: (){
          //       player.play(AssetSource('Seesaw.mp3'));
          // },

          // ),
          InkWell(
            onTap: () {
              setState(() {
                isplay = !isplay;
                if (isplay) {
                  player.play(AssetSource('Seesaw.mp3'));
                } else {
                  player.stop();
                }
              });
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  // color: Color.fromRGBO(121, 85, 72, 0.5),
                  border: Border.all(),
                  //  borderRadius:BorderRadius.circular(10),
                ),
                child: Center(
                    child:
                        isplay ? Icon(Icons.pause) : Icon(Icons.play_circle))),
          ),
        ],
      )),
    );
  }
}
