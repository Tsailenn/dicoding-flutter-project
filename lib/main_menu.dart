import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/about_screen.dart';
import 'package:submission/npc_data.dart';
import 'package:submission/npc_menu.dart';
import 'package:submission/npc_screen.dart';
import 'package:submission/ost_screen.dart';
import 'package:submission/source_screen.dart';

class MainMenu extends StatelessWidget{

  final menuTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  );
  final menuBorder = Border.all(
      color: Colors.black54,
      width: 4
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SourceScreen();
          }));
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.warning_amber_rounded, color: Colors.white,),
      ),
      appBar: AppBar(
        title: Text('Th11 NPCs Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AboutScreen();
                }));
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  decoration: BoxDecoration(
                    border: menuBorder
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 3,
                              color: Colors.black54
                            )
                          )
                        ),
                          child: Image.asset('images/cover/AboutCover.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('About', style: menuTextStyle,),
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NPCMenu();
                }));
              },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    decoration: BoxDecoration(
                      border: menuBorder
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 3,
                                      color: Colors.black54
                                  )
                              )
                          ),
                            child: Image.asset('images/cover/NPCCover.jpg')
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('NPCs', style: menuTextStyle,),
                        )
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return OSTScreen();
                }));
              },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    decoration: BoxDecoration(
                      border: menuBorder
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 3,
                                      color: Colors.black54
                                  )
                              )
                          ),
                            child: Image.asset('images/cover/OSTCover.png')
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('Music Room', style: menuTextStyle,),
                        )
                      ],
                    ),
                  ),
                )
            ),
          ]
        ),
      )

    );
  }
}