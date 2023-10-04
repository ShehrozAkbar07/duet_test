import 'dart:async';
import 'package:duettest/AppRoutes/routes.dart';
import 'package:duettest/components/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = "/";

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  String splashImage = "splash1";
  late AnimatedSwitcher animatedSwitcher;

  startTime() async {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void changeSplashImage() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        splashImage = "splash2";
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        splashImage = "splash3";
      });
    });
  }

  void navigationPage() {
    // SharedPreferences.getInstance().then((value) {
    //   if (value.containsKey('userId')) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const NavigationBarr()));
    // } else {
    //   Navigator.pushReplacement(context,
    // MaterialPageRoute(builder: (context) => const NavigationBarr());
    // }
    // });
  }

  @override
  void initState() {
    super.initState();
    // changeSplashImage();
    animatedSwitcher = const AnimatedSwitcher(duration: Duration(seconds: 2));
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff4f4f6),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // Image.asset(
            //   "assets/images/splash.png",
            //   fit: BoxFit.cover,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Image.asset(
                //   "assets/images/IntroPic.png",
                //   // width: Dimens.width10,
                //   // height: Dimens.height10,
                //   width: animation.value * 360,
                //   height: animation.value * 300,
                // ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       left: Dimens.width8, bottom: Dimens.height2),
                //   child:
                // ),

                //     SizedBox(
                //       height: size.height * 0.03,
                //     ),
                //     Container(
                //       height: size.height * 0.041,
                //       width: size.width * 0.4,
                //       decoration: BoxDecoration(
                //         color: primary,
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       child: Center(
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 15),
                //           child: Text(
                //             "Kwenu",
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 34.sp,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       height: size.height * 0.12,
                //     ),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: Image.asset("assets/images/logo.PNG",
                      // width: Dimens.width10,
                      // height: Dimens.height10,
                      height: 300.h,
                      width: 300.w),
                ),

                // InkWell(
                //   onTap: () {
                //     Get.toNamed(AppRoutes.bottomnav);
                //   },
                //   child: Image.asset("assets/images/buton.png",
                //       // width: Dimens.width10,
                //       // height: Dimens.height10,
                //       height: 100.h,
                //       width: 300.w),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
