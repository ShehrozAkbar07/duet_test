import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  final pages = const [
    // Trading(),
    // Order(),
    // CopyTrading(),
    // Accounts(
    //   islive: false,
    // ),
    // Profile()
  ].obs;
}
