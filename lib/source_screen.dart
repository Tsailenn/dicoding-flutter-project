import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SourceScreen extends StatelessWidget{
  String subterrain =
      """
      https://www.zerochan.net/1222552
      """;

  String npcs =
      """
      https://en.touhouwiki.net/wiki/Subterranean_Animism
      """;

  String prismriver =
      """
      https://twitter.com/ReimuForSmash/status/1189350300420857856/photo/1
      """;

  final menuBorder = Border.all(
      color: Colors.black54,
      width: 4
  );

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
        title: Text("Image Sources"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                  border: menuBorder
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.network('https://static.zerochan.net/Touhou.full.1222552.jpg'),
                      Text(subterrain, style: TextStyle(
                          fontSize: 20
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Align(
                    child: Stack(
                      children: <Widget>[
                        Text(
                          "Hell",
                          style: TextStyle(
                              fontSize: 18,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.black
                          ),
                        ),
                        Text(
                          "Hell",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                  border: menuBorder
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset('images/cover/NPCCover.jpg'),
                      Text(npcs, style: TextStyle(
                          fontSize: 20
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Align(
                      child: Stack(
                        children: <Widget>[
                          Text(
                            "NPCs",
                            style: TextStyle(
                                fontSize: 18,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = Colors.black
                            ),
                          ),
                          Text(
                            "NPCs",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                  border: menuBorder
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.network('https://pbs.twimg.com/media/EIFryk3W4AAGLSB?format=png&name=900x900'),
                      Text(prismriver, style: TextStyle(
                          fontSize: 20
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Align(
                      child: Stack(
                        children: <Widget>[
                          Text(
                            "Prismriver Sisters",
                            style: TextStyle(
                                fontSize: 18,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = Colors.black
                            ),
                          ),
                          Text(
                            "Prismriver Sisters",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ],
      )

    );
  }

}