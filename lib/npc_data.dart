class NPCData{
  String cover;
  String fullImage;
  String desc;
  String name;
  String title;
  bool marked = false;

  NPCData(String inpCover, String inpImage, String inpName, String inpTitle, String inpDesc){
    this.cover = inpCover;
    this.fullImage = inpImage;
    this.desc = inpDesc;
    this.name = inpName;
    this.title = inpTitle;
  }
}

var dataList = <NPCData>[
  NPCData('images/cover/CroppedKisume.png', 'images/npc/Th11Kisume.png', 'Kisume', 'The Fearsome Well Spirit',
    """
    Kisume (キスメ) is a rather shy Tsurube-otoshi who usually spends her time in buckets. She is often seen in dark places such as caves or wells. As a midboss with no dialogue and a sparse official profile, little is known about her.
    
    Kisume was the stage 1 midboss of Subterranean Animism and has made a cameo appearance in Oriental Sacred Place chapter 10 and Forbidden Scrollery chapter 2.
    """
  ),
  NPCData('images/cover/CroppedYamame.png', 'images/npc/Th11Yamame.png', 'Yamame Kurodani', 'The Bright Net in the Dark Cave',
    """
    Yamame Kurodani (黒谷 ヤマメ Kurodani Yamame) is the Stage 1 boss in Subterranean Animism, inhabiting the entrance to the Underworld.
    
    Yamame is a tsuchigumo – an earth spider – with the ability to manipulate diseases. She first appeared as the Stage 1 boss in Subterranean Animism, then as a stage 3 target in Double Spoiler and as a background character in Hopeless Masquerade. She generally prefers not to use said ability, though, and she has an outgoing nature and a love of fighting. Other youkai like her for her bright personality, but humans stay away because of her ability. In addition, as a tsuchigumo, she is well-suited for building construction due to her physical strength and that of her string. However, she can apparently be reasoned with.
    """
  ),
  NPCData('images/cover/CroppedParsee.png', 'images/npc/Th11Parsee.png', 'Parsee Mizuhashi', "The Jealousy Beneath the Earth's Crust",
    """
    Parsee Mizuhashi (水橋　パルスィ Mizuhashi Parusi) is a hashihime, or bridge princess, who guards the "bridge" between the surface world and the Underworld. She is able to control the jealousy in others.
    
    Parsee first appeared as the stage 2 boss of Subterranean Animism.
    """
  ),
  NPCData('images/cover/CroppedYuugi.png', 'images/npc/Th11Yuugi.png', 'Yuugi Hoshiguma', "The Spoken-of Unexplainable Phenomena",
    """
    Yuugi Hoshiguma (星熊 勇儀 Hoshiguma Yuugi) is an oni currently living in the Ancient City, which is in the Underworld. She has an unexplainable ability. She was once one of the Big Four of the Mountain, along with Suika Ibuki, and she lives alongside many other oni that were forced below ground.
    
    Yuugi first appears as the stage 3 boss and midboss of Subterranean Animism, which is quite suprising for an oni, and was a target on stage 6 of Double Spoiler. She made a cameo appearance as one of the many background characters in Hopeless Masquerade, but made an appearace in Marisa Kirisame's ending.
    """
  ),
  NPCData('images/cover/CroppedSatori.png', 'images/npc/Th11Satori.png', 'Satori Komeiji', 'The Girl Even the Vengeful Spirits Fear',
    """
    Satori Komeiji (古明地　さとり Komeiji Satori) is the Mistress of the Palace of the Earth Spirits after the underground city was separated from Hell. Her ability to read minds causes various youkai and spirits to fear her, but makes her loved by the animals that normally can't be understood. With these animals as pets, she manages the ruins of the Hell of Blazing Fires where her home stands. She is also the main protagonist of Foul Detective Satori.
    
    She first appeared as Stage 4 Boss in Subterranean Animism, then she was Stage 9 target in Double Spoiler.
    
    Satori Komeiji is, as her namesake suggests, a satori, which means she has the power to read minds. The satori are particularly detested, even among the other youkai currently living in Former Hell. Her palace never gets visitors, because no one wants to visit her. Even Kanako Yasaka felt the need to go behind her back to get control of the Hell of Blazing Fires, as it would be impossible to negotiate with her.
    """
  ),
  NPCData('images/cover/CroppedRin.png', 'images/npc/Th11Rin.png', 'Rin Kaenbyou', "Hell's Traffic Accident",
    """
    Rin Kaenbyou (火焔猫 燐 Kaenbyou Rin) is one of Satori Komeiji's pets. Her job is to carry corpses to the former Hell of Blazing Fires to regulate its heat.
    
    Rin is a kasha living in the Palace of the Earth Spirits; her master is Satori Komeiji. Essentially, she lives day-to-day by stealing corpses from funerals to cart them to the former Hell of Blazing Fires. She will not kill humans herself, though she (quite efficiently) pursues humans that are close to death, hiding stolen corpses in her wheelbarrow using a straw mat, or just generally collecting corpses she happens to run across. Humans do not usually think that she would be carting corpses out in the open like she does, so she has a degree of freedom even in places with lots of people. In addition to maintaining the energy influx for the power source, she also controls vengeful spirits, at least in the vicinity.
    """
  ),
  NPCData('images/cover/CroppedUtsuho.png', 'images/npc/Th11Utsuho.png', 'Utsuho Reiuji', 'Scorching, Troublesome Divine Flame',
    """
    Utsuho Reiuji (霊烏路 空 Reiuji Utsuho) is the main antagonist of Subterranean Animism. She's one of Satori Komeiji's pets and a Hell raven who has lived in the underground world since before it was separated from Hell. Her job is to regulate the flames of the Hell of Blazing Fires.
    
    Utsuho first appeared as the Final Boss of Subterranean Animism, and was indirectly the main reason that the events of Undefined Fantastic Object occurred. She also appeared as a playable character in Touhou Hisoutensoku, appearing as a boss in Sanae Kochiya and Cirno's scenario. She was a target on Stage 8 in Double Spoiler and appeared in the background of Hopeless Masquerade.
    """
  ),
  NPCData('images/cover/CroppedSanae.png', 'images/npc/Th11Sanae.png', 'Sanae Kochiya', 'Newbie Goddess of the Mountain',
    """
    Sanae Kochiya (東風谷　早苗 Kochiya Sanae) is a human, but is also a distant descendant of the goddess Suwako Moriya. Her role at the Moriya Shrine is similar to a shrine maiden, but with her inherited power Sanae has also become a minor deity herself. Originally from the Outside World, Sanae migrated to Gensokyo with the shrine and its two resident goddesses, Kanako Yasaka and Suwako Moriya. As a result, she is rather knowledgeable about the outside world and modern living, although her attempts to explain scientific concepts usually just confuse the locals. Her knowledge on things like the youkai of Gensokyo, on the other hand, seems a bit lacking for a shrine maiden.
    
    Sanae was first introduced in Mountain of Faith as the stage 5 boss, reappeared as the extra stage of Subterranean Animism and later became a playable character in Undefined Fantastic Object, Touhou Hisoutensoku, Ten Desires and Legacy of Lunatic Kingdom. She is a secondary character in the comic Wild and Horned Hermit.
    """
  ),
  NPCData('images/cover/CroppedKoishi.png', 'images/npc/Th11Koishi.png', 'Koishi Komeiji', 'The Closed Eyes of Love',
    """
    Koishi Komeiji (古明地 こいし Komeiji Koishi) is Satori Komeiji's younger sister. To escape the fear and hatred which other beings feel towards the satori species, she attempted to destroy her mind-reading ability by closing her Third Eye. However, this had the side effect of sealing away her own conscious mind, causing her to lose all thoughts and motives; she could no longer be hated, but neither could she be loved, or even remembered by people who saw her.
    
    Koishi first appeared as the Extra stage boss of Subterranean Animism, later as a playable character in Hopeless Masquerade and Urban Legend in Limbo.
    
    Koishi's presence cannot be "felt" by anyone unless she has entered their direct field of vision and is forgotten as soon as she leaves it. In general, she doesn't have a personality. However, children enjoy her presence as one of an imaginary friend, who they forget about once they grow up. However, as Satori's presence has been made known, even Koishi has begun to be recognized as of late.
    """
  )
];