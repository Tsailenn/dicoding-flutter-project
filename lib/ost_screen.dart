import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/ost_data.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class OSTScreen extends StatefulWidget{
  List<OSTData> data = ostList;
  final audioPlayer = AssetsAudioPlayer.newPlayer();

  @override
  _OSTScreenState createState() => _OSTScreenState();

}

class _OSTScreenState extends State<OSTScreen>{
  //List<OSTData> data = ostList;
  //int ind = 1;

  @override
  void dispose() {
    widget.audioPlayer.stop();
    for(int i = 0; i < widget.data.length; i++){
      widget.data[i].isPlaying = false;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SafeArea(
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        title: Text("Music Room"),
      ),
      body: ListView(
        children: List.generate(widget.data.length, (index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: Colors.black54
                )
            ),
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: (){
                setState(() {
                  for(int i = 0; i < widget.data.length; i++){
                    if (widget.data[i].isPlaying){
                      widget.audioPlayer.stop();
                      if (i != index){
                        widget.audioPlayer.open(Audio.network(widget.data[index].path), loopMode: LoopMode.single);
                        widget.data[index].isPlaying = true;
                        break;
                      }
                      else if((i == index) && widget.data[index].isPlaying){
                        widget.data[i].isPlaying = false;
                        return;
                      }
                    }
                  }
                  //widget.audioPlayer.stop();
                  widget.audioPlayer.open(Audio.network(widget.data[index].path), loopMode: LoopMode.single);
                  widget.data[index].isPlaying = true;
                });
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                      width: 3,
                                      color: Colors.black54,
                                    )
                                ),
                                color: Colors.black54
                            ),
                            child: Image.asset(widget.data[index].cover),
                          ),
                          Container(
                              child: Icon(
                                Icons.music_note,
                                color: widget.data[index].isPlaying ? Colors.white : Colors.black54,
                              )
                          )
                        ],
                      )
                  ),
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(widget.data[index].title, style: TextStyle(
                            fontSize: 20
                          ),)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        })
      )
    );
  }
}