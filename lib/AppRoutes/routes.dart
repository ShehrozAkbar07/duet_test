import 'package:duettest/View/explore.dart';
import 'package:duettest/components/my_bottom_nav_bar.dart';
import 'package:duettest/screens/explore/explore.dart';
import 'package:duettest/screens/profile/prrofile_screen.dart';
import 'package:duettest/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = "/";
  static const String profile = "/profile";
  static const String homescreen = "/homescreen";
  static const String explore = "/explore";
  static const String bottomnav = "/bottomnav";

  static List<GetPage> appRoutes = [
    // GetPage(name: homescreen, page: () => HomeScreen()),
    GetPage(name: explore, page: () => Explore()),
    GetPage(name: bottomnav, page: () => const NavigationBarr()),
    GetPage(name: splash, page: () => const SplashScreen()),

    GetPage(name: homescreen, page: () => HomeScreen()),
    GetPage(name: profile, page: () => ProfileScreen()),
  ];
}
