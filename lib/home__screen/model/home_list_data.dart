class HomeListData {
  HomeListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = "",
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  String perNight;

  static List<HomeListData> homeList = <HomeListData>[
    HomeListData(
      imagePath: 'assets/images/yourwaifu.png',
      titleTxt: 'AR Waifu',
      subTxt: 'Try our AR Waifu now!',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      // perNight: "Play",
    ),
    // HomeListData(
    //   imagePath: 'assets/homescreen/home_3.png',
    //   titleTxt: 'Planet Protectors',
    //   subTxt: 'Join the mission to save the planet and \nprotect its future.',
    //   dist: 3.0,
    //   reviews: 62,
    //   rating: 4.0,
    //   // perNight: "Play",
    // ),
    // HomeListData(
    //   imagePath: 'assets/homescreen/home_1.png',
    //   titleTxt: 'Eco Heroes',
    //   subTxt: 'Join the Eco Heroes and save the planet \nthrough sustainability',
    //   dist: 7.0,
    //   reviews: 90,
    //   rating: 4.4,
    //   // perNight: "Play",
    // ),
    // HomeListData(
    //   imagePath: 'assets/homescreen/home_2.png',
    //   titleTxt: 'Renewable Quest',
    //   subTxt: 'Save the kingdom with renewable energy',
    //   dist: 2.0,
    //   reviews: 240,
    //   rating: 4.5,
    //   // perNight: "Play",
    // ),
  ];
}
