import 'package:duettest/View/explore.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = "/";
  static const String trading = "/trading";

  static const String explore = "/explore";

  static List<GetPage> appRoutes = [
    GetPage(name: explore, page: () => Explore()),
  ];
}
