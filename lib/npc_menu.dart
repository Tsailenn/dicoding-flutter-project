import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/npc_data.dart';
import 'package:submission/npc_screen.dart';

class NPCMenu extends StatefulWidget{
  final nameTextStyle = TextStyle(
      fontSize: 20
  );
  final titleTextStyle = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.italic,
  );
  var npcList = dataList;

  @override
  _NPCMenuState createState() => _NPCMenuState();

}

class _NPCMenuState extends State<NPCMenu>{

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
        title: Text("NPCs"),
      ),
      body: ListView(
        children: List.generate(widget.npcList.length, (index){

          return Container(
            child: index % 2 == 0 ?
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 2
                    )
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return NPCScreen(widget.npcList[index]);
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.black54,
                          child: Image.asset(widget.npcList[index].cover),
                        ),
                        ),
                        Expanded(
                          flex: 3,
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Align(
                                  child: Text(widget.npcList[index].name, style: TextStyle(
                                fontSize: 20
                            ),),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Align(
                                  child: Text(widget.npcList[index].title, textAlign: TextAlign.left, style: TextStyle(
                                    fontStyle: FontStyle.italic
                                  ),),
                                  alignment: Alignment.centerLeft,
                                ),
                              ],
                            )
                        )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.fromLTRB(double.infinity, 0, 0, double.infinity),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          widget.npcList[index].marked = !widget.npcList[index].marked;
                        });
                      },
                      icon: widget.npcList[index].marked ? Icon(Icons.star) : Icon(Icons.star_border),
                      color: Colors.amber,
                    ),
                  )
                )
              ],
            )
            :
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black54,
                          width: 2
                      )
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return NPCScreen(widget.npcList[index]);
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Align(
                                  child: Text(widget.npcList[index].name, textAlign: TextAlign.right, style: TextStyle(
                                    fontSize: 20
                                  ),),
                                  alignment: Alignment.centerRight,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Align(
                                  child: Text(widget.npcList[index].title, textAlign: TextAlign.right, style: TextStyle(
                                      fontStyle: FontStyle.italic
                                  ),),
                                  alignment: Alignment.centerRight,
                                ),
                              ],
                            )
                        )
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.black54,
                          child: Image.asset(widget.npcList[index].cover),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, double.infinity, double.infinity),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          widget.npcList[index].marked = !widget.npcList[index].marked;
                        });
                      },
                      icon: widget.npcList[index].marked ? Icon(Icons.star) : Icon(Icons.star_border),
                      color: Colors.amber,
                    ),
                  )
                )
              ],
            )
          );

          /*
          return Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return NPCScreen(widget.npcList[index]);
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.asset(widget.npcList[index].cover),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(widget.npcList[index].name),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(widget.npcList[index].title),
                                  ],
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.fromLTRB(double.infinity, 0, 0, double.infinity),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        widget.npcList[index].marked = !widget.npcList[index].marked;
                      });
                    },
                    icon: widget.npcList[index].marked ? Icon(Icons.star) : Icon(Icons.star_border),
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          );
          */
        })
      ),
    );
  }
}

