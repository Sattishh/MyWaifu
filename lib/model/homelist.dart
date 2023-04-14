import 'package:best_flutter_ui_templates/arcore_app/arcore_screen.dart';
import 'package:best_flutter_ui_templates/home__screen/home_screen_secodary.dart';
import 'package:best_flutter_ui_templates/introduction_animation/introduction_animation_screen.dart';
import 'package:best_flutter_ui_templates/login/pages/login_page.dart';
import 'package:best_flutter_ui_templates/login/pages/signup_page.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/login_page_image.png',
      navigateScreen: LoginPage(),
    ),
    HomeList(
      imagePath: 'assets/design_course/signup_page_image.png',
      navigateScreen: SignupPage(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: ArCoreApp(),
    ),
  ];
}
