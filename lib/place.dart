class Place {
  final String place;
  final String region;
  final String mainPhoto;
  final List<String> photos;
  final String about;
  final bool isTrending;
  final bool isRekomendasi;

  Place({
    required this.place,
    required this.region,
    required this.mainPhoto,
    required this.photos,
    required this.about,
    required this.isTrending,
    required this.isRekomendasi,
  });
}

List<Place> places = [
  Place(
      place: 'Cisarua',
      region: 'Bogor',
      mainPhoto:
          'https://media.discordapp.net/attachments/1154310589624090674/1159844550517465118/Puncak_Cisarua_Bogor_-_farhanjourney.jpg?ex=65328069&is=65200b69&hm=b1e0c2183c09391eeb0ceacf0661d45210aee4a8b3e5bb86f61045e15fad5151&=&width=963&height=702',
      photos: [
        'https://media.discordapp.net/attachments/1154310589624090674/1159844550920114176/tempat-wisata-di-puncak-yang-instagramable-696x464.jpg?ex=65328069&is=65200b69&hm=def90ce2f6c44ecd23103b9c4ebe8afc423392a9463cad216e7d0bd96a50e259&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844551280836618/pass2-840x1024.jpg?ex=65328069&is=65200b69&hm=67988f49319efcdd769373497be6207a6c7f45c36c946f8a1519a8b22e53b8ff&=&width=576&height=702',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844551763173406/62cd2e8a8a1f0-q5nt07i8abhxr9fi8b4ifxm24iw0wkbm804t6ppl2c.jpg?ex=6532806a&is=65200b6a&hm=f5f5b5b4110854476aa3cbff3e3572531c157aaf0f6b4e781a08c45ff9d1dede&=',
      ],
      about: 'Terletak di kawasan pegunungan di Kabupaten Bogor, Jawa Barat, Cisarua menawarkan keindahan alam yang menakjubkan dan udara yang sejuk. Dikenal sebagai salah satu destinasi wisata favorit, khususnya bagi warga Jakarta dan sekitarnya, Cisarua menjadi tempat pelarian dari hiruk pikuk kehidupan perkotaan.',
      isTrending: true,
      isRekomendasi: true),
  Place(
      place: 'Pulau Pramuka',
      region: 'Kepulauan Seribu',
      mainPhoto:
          'https://media.discordapp.net/attachments/1154310589624090674/1159844666548686958/202212301208-main.cropped_1672376902.jpg?ex=65328085&is=65200b85&hm=b05fa0ccce95e7efaa4dc3841f3b6af40b8c43dc891377086b90dd65b672e52e&=',
      photos: [
        'https://media.discordapp.net/attachments/1154310589624090674/1159844667047817257/begini-asal-usul-nama-pulau-pramuka-di-kepulauan-seribu-LbiFOaOzRd.jpg?ex=65328085&is=65200b85&hm=32bbb09372309e65f68246e2ef10db875ddae75138b49d351e29b75f8833fb33&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844667513372693/download.jpeg?ex=65328085&is=65200b85&hm=276510ba22aef05c02cba258fe9352cbea45d1281736aa0d965be2d71a66104e&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844667874086972/Paket_Tour_Pulau_Pramuka_dari_Jakarta.jpg?ex=65328085&is=65200b85&hm=28a5e2c97dc925b48f9a8ee0e29de30a2d2c201af2cdb89bd7fce2bb064b1864&=',
      ],
      about: 'Pulau Pramuka merupakan salah satu pulau yang berada di gugusan Kepulauan Seribu, Jakarta, Indonesia. Pulau ini merupakan pusat administrasi dari Kecamatan Kepulauan Seribu, sekaligus menjadi salah satu destinasi wisata yang populer di kawasan Kepulauan Seribu. Pulau Pramuka dikenal dengan keindahan pantai berpasir putihnya, air laut yang jernih, serta beragam aktivitas seperti snorkeling dan diving.',
      isTrending: true,
      isRekomendasi: true),
  Place(
      place: 'Karimun Jawa',
      region: 'Jepara',
      mainPhoto:
          'https://media.discordapp.net/attachments/1154310589624090674/1159844826259411024/karimunjawa_169.jpeg?ex=653280ab&is=65200bab&hm=6244a46a5d2c3b360df5a67b90860c8b25d26d4d80893a4c189cce6317ef4235&=',
      photos: [
        'https://media.discordapp.net/attachments/1154310589624090674/1159844825902874624/017804000_1436434433-11.webp?ex=653280ab&is=65200bab&hm=263fce8c8d96a4de891eb5aa4f4216b3bb012c7d7289c2e9757fe6f8835d6356&=&width=936&height=702',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844826557186128/menikmati-wisata-snorkeling-di-bawah-laut-karimunjawa-jepara-senin-852023_169.jpeg?ex=653280ab&is=65200bab&hm=d6b190e71220d5ff2adc610e9d0583484a5816d7130746da043cb8e16084fecb&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159844826884349992/78fbc34e-fb64-4c8a-b99f-11a05dedba3e-1614955312725-2dc81c87cb062e5e4fca11e157a4c868.webp?ex=653280ab&is=65200bab&hm=ca1666b3218e968b7d4f5341ea25c86c5fc3a369cff71cb2f03fe5fd78ea485b&=&width=1053&height=702',
      ],
      about: 'Karimun Jawa merupakan salah satu permata tersembunyi di Indonesia yang terletak di utara Pulau Jawa. Sebagai sebuah kepulauan yang terdiri dari 27 pulau, Karimun Jawa menawarkan panorama alam bawah laut yang menakjubkan dengan beragam biota laut dan terumbu karang yang indah.',
      isTrending: true,
      isRekomendasi: false),
  Place(
      place: 'Lembang',
      region: 'Bandung',
      mainPhoto:
          'https://media.discordapp.net/attachments/1154310589624090674/1159848534632312955/52422533-222227138640328-9056855395391435976-n-67ecdf5fc24e2a58e8a7ae2e32cd372b_600x400.jpg?ex=6532841f&is=65200f1f&hm=ce576c769d9532f8945918bb13b9ba036669be5b1e2ba5c1169dfc1aa74e6256&=',
      photos: [
        'https://media.discordapp.net/attachments/1154310589624090674/1159848534955278488/091769800_1617802968-WhatsApp_Image_2021-04-06_at_9.42.39_PM.webp?ex=6532841f&is=65200f1f&hm=46d513bfcfa97c051d9bc08faae63d1e481657f4411d851b8aa3df921b98885f&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159848535576023121/268989726_1201304520278579_41240-20220122115509.jpg?ex=6532841f&is=65200f1f&hm=d2535e596a5ed0f7dd1b047ae744ec4866e3876273fd1531668243b17a51aefd&=',
        'https://media.discordapp.net/attachments/1154310589624090674/1159848535848661063/61d6a990c4220.jpg?ex=6532841f&is=65200f1f&hm=0365f5d494bbd63b524219913c02045a2f0547dfae57024ad44472a83622fc72&=',
      ],
      about: 'Lembang adalah sebuah kecamatan di Bandung Barat yang menjadi salah satu destinasi wisata favorit bagi wisatawan yang mengunjungi Bandung. Dikenal dengan udara sejuknya yang berasal dari kawasan pegunungan, Lembang menawarkan beragam atraksi wisata, mulai dari pertanian, peternakan, hingga wisata alam dan kuliner khas.',
      isTrending: true,
      isRekomendasi: true),
  Place(
      place: 'Ubud',
      region: 'Bali',
      mainPhoto:
          'https://media.discordapp.net/attachments/1154310589624090674/1159849486273748992/ubud.webp?ex=65328502&is=65201002&hm=6233531bcacb5fe4948f4d0abf313087157cf6618abaff0aafeab9742980c40d&=',
      photos: [
        'https://media.discordapp.net/attachments/1154310589624090674/1159849486890323988/ubud-things-to-do-1.jpg?ex=65328502&is=65201002&hm=5fda5b0bb3b65cfb82e252d3fabc26f1ece1a9154ccfdb1b04602d52545d79a1&=&width=1053&height=702',
        'https://media.discordapp.net/attachments/1154310589624090674/1159849487251030026/1200px-Monkey_Forest_Street_of_Ubud_200507.jpg?ex=65328502&is=65201002&hm=5fbadba7e9eee062ece7bd21f6dd0f260a70077b33c012d3d3c78db092644f0e&=&width=980&height=702',
        'https://media.discordapp.net/attachments/1154310589624090674/1159849485913047090/1467a700-7195-4ca5-9ac4-c34ac49e6650.jpg?ex=65328502&is=65201002&hm=2a54d6618c2c0fde1fe30698fa5dc71470c07cbf648999c1fb45c538cb73c763&=&width=1054&height=702',
      ],
      about: 'Ubud terletak di tengah pulau Bali dan dikenal sebagai pusat seni dan budaya pulau ini. Menyuguhkan suasana pedesaan yang tenang dengan latar belakang hutan tropis, sawah terasering, dan sungai yang mengalir deras, Ubud menawarkan pengalaman yang jauh berbeda dari pantai-pantai ramai di Bali selatan.',
      isTrending: true,
      isRekomendasi: false),
];
