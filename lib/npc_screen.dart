import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/npc_data.dart';

class NPCScreen extends StatefulWidget{
  var npcData;
  NPCScreen(NPCData inpData){
    npcData = inpData;
  }

  @override
  _NPCScreenState createState() => _NPCScreenState();

}

class _NPCScreenState extends State<NPCScreen>{
  bool fullImage = false;

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
        title: Text(widget.npcData.name),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          setState(() {
            fullImage = !fullImage;
          });
        },
        child: Icon(
          fullImage ? Icons.image : Icons.image_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: fullImage ?
          //display full image
      ListView(
        children: <Widget>[
          SizedBox(
            height: 4,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(width: 1,),
                flex: 1,
              ),
              Expanded(child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(widget.npcData.fullImage),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          widget.npcData.marked = !widget.npcData.marked;
                        });
                      },
                      icon: widget.npcData.marked ? Icon(Icons.star) : Icon(Icons.star_border),
                      color: Colors.amber,

                    ),
                  )
                ],
              ), flex: 6,),
              Expanded(
                child: SizedBox(width: 1,),
                flex: 1,
              ),
            ],
          )
        ],
      )
          :
          //description mode
      ListView(
        children: <Widget>[
          SizedBox(
            height: 4,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(width: 1,),
                flex: 1,
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(widget.npcData.cover),
                  ),
                  IconButton(
                    icon: widget.npcData.marked ? Icon(Icons.star) : Icon(Icons.star_border),
                    color: Colors.amber,
                    onPressed: (){
                      setState(() {
                        widget.npcData.marked = !widget.npcData.marked;
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(width: 1,),
                flex: 1,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: SizedBox(width: 1,),
                flex: 1,
              ),
              Expanded(
                  child: Text(widget.npcData.desc, style: TextStyle(fontSize: 20),),
                flex: 8,
              ),
              Expanded(
                child: SizedBox(width: 1,),
                flex: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}