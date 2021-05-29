class OSTData{
  String cover;
  String title;
  String path;
  bool isPlaying = false;

  OSTData(String inpCover, String inpTitle, String inpPath){
    this.cover = inpCover;
    this.title = inpTitle;
    this.path = inpPath;
  }

}

var ostList = <OSTData>[
  OSTData('images/cover/CroppedSatori.png', 'Satori Maiden ~ 3rd Eye', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/lwjokhjs/%5B09%5D%20Shoujo%20Satori%20~%203rd%20eye.mp3'),
  OSTData('images/cover/CroppedUtsuho.png', 'Solar Sect of Mystic Wisdom ~ Nuclear Fusion', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/bycdrxcf/%5B13%5D%20Reichi%20no%20Taiyou%20Shinkou%20~%20Nuclear%20Fusion.mp3'),
  OSTData('images/cover/CroppedYuugi.png', 'A Flower-Studded Sake Dish on Mt Ooe', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/lsrnmaex/%5B07%5D%20Hana%20no%20Sakadzuki%20Ooeyama.mp3'),
  OSTData('images/cover/CroppedKisume.png', 'The Dark Blowhole', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/rxikhhsp/%5B02%5D%20Kurayami%20no%20Fuuketsu.mp3'),
  OSTData('images/cover/CroppedParsee.png', 'Green-Eyed Jealousy', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/cwkboltb/%5B05%5D%20Midorime%20no%20Jealousy.mp3'),
  OSTData('images/cover/CroppedRin.png', 'Corpse Voyage ~ Be of Good Cheer!', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/doesvvcw/%5B11%5D%20Shitai%20Ryokou%20~%20Be%20of%20good%20cheer%21.mp3'),
  OSTData('images/cover/CroppedSanae.png', 'Last Remote', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/mgxaavrl/%5B14%5D%20Last%20Remote.mp3'),
  OSTData('images/cover/CroppedKoishi.png', "Hartmann's Youkai Girl", 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/xqocgxnm/%5B15%5D%20Hartmann%20no%20Youkai%20Shoujo.mp3'),
  OSTData('images/cover/CroppedYamame.png', 'The Sealed Away Youkai ~ Lost Place', 'https://vgmsite.com/soundtracks/touhou-chireiden-subterranean-animism/guhysosw/%5B03%5D%20Fuujirareta%20Youkai%20~%20Lost%20Place.mp3'),
];