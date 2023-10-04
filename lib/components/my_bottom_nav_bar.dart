import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:duettest/View/explore.dart';
import 'package:duettest/constants.dart';
import 'package:duettest/screens/explore/explore.dart';
import 'package:duettest/screens/profile/prrofile_screen.dart';
import 'package:flutter/material.dart';

class NavigationBarr extends StatefulWidget {
  const NavigationBarr({super.key});

  @override
  State<NavigationBarr> createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {
  int currentPage = 0;

  List<Widget> pages = [HomeScreen(), Explore(), ProfileScreen()];
  // var page = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        // index: 0,
        height: 50.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: kPrimaryColor),
          Icon(Icons.search_outlined, size: 30, color: kPrimaryColor),

          // Icon(Icons.search, size: 30,color: Color(0xffd9d9e2)),
          Icon(Icons.person_outline, size: 30, color: kPrimaryColor),
        ],
        onTap: ((index) {
          print(index);
          setState(() {
            currentPage = index;
          });
        }),
        color: Colors.white,

        backgroundColor: Colors.transparent,
        // animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
      ),
    );
  }
}
