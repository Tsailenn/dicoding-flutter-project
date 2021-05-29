import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{
  String abt =
      """
      Touhou Chireiden ~ Subterranean Animism. (Japanese: 東方地霊殿 ～ Subterranean Animism., Hepburn: Tōhō Chireiden, lit. "Eastern Palace of the Earth Spirits") is the eleventh main game of the Touhou Project scrolling shooter series. Made by the dōjin game maker Team Shanghai Alice, the full version of the game was released in the 74th Comiket which commenced in August 2008.
      
      """;

  String plot =
      """
      
      On one wintry day, a geyser erupted near the Hakurei Shrine. Delighted at the resulting hot spring, the shrine maiden Reimu Hakurei paid no heed to the earthly spirits that came along with the geyser. In the Scarlet Devil Mansion, however, the well-read librarian Patchouli Knowledge grew concerned at the situation and sought Yukari Yakumo for advice. Since there had been an agreement that the youkai of the worlds above and below the ground should not disturb each other, the youkai above ground sent the human Reimu Hakurei or her friend Marisa Kirisame to the subterranean world to investigate this breach, while the youkai stayed behind and communicated with the humans via magical artifacts.
      
      Descending toward the lowest levels of what used to be Hell, the heroines discover the cause and purpose of the spirit geyser. Utsuho Reiuji, a hell raven, received the power of nuclear fusion from a mysterious goddess of the mountain by consuming the Yatagarasu. Misunderstanding what the god told her, she plotted to fan the fiery flames of Hell and burn the world above into a furnace. Utsuho's feline friend, Orin, worried about Utsuho's sudden change of character, set off the geysers to alert the world above. In time, the nuclear threat is neutralized and the heroines turn their attention to the mysterious mastermind behind the incident.
      
      In the Extra Mode, the heroines pay a visit to the Moriya Shrine atop the mountain, but the resident gods are not there. There is, however, a peculiar visitor to the shrine, Koishi Komeiji, who climbed all the way up to the shrine without being detected. They decide to have a spar. Afterwards, an inhabitant of the Moriya Shrine explains their motivation: the mountain goddess Kanako Yasaka wanted to introduce a new form of energy to vitalize the mountain, dubbing the plan the "Mountain Industrial Revolution Project". Seeing that the gods meant no harm, the heroines disengage and go back to their daily lives.
      
      """;

  String gameplay =
      """
      
      Subterranean Animism features two playable characters (Reimu Hakurei and Marisa Kirisame), each with three weapon types representing a youkai assisting them from above ground. Collecting power items adds up to four "option" satellites around the character (or eight for the Marisa/Alice combination), which behave differently according to the character and weapon type. Power can be used to unleash a bomb, each with different behaviors, and some cause special gameplay effects to occur.
      
      The scoring system is based on grazing, coupled with the collection of items dropped by enemies. As such, the player is urged to actively graze at every possible opportunity in order to increase the point item value. Grazing large amounts of bullets in little time is rewarded by the temporary effect of autocollecting all the freefalling items at their maximum value (identical to the point of collection effect, but without regard to the character's location on the screen), letting the player concentrate on avoiding bullets.
      
      """;

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
        title: Text("About the Game"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('images/cover/Th11_Cover.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(abt, style: TextStyle(
                    height: 1.4
                ),
                ),
                Text("Gameplay", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text(gameplay, style: TextStyle(
                    height: 1.4
                ),
                ),
                Text("Plot", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
                ),
                Text(plot, style: TextStyle(
                    height: 1.4
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}