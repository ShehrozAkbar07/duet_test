import 'package:duettest/Const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int imageNum = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "What to eat",
                    style: GoogleFonts.breeSerif(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Icon(Icons.filter_alt_outlined)
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: 40,
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide:
                            BorderSide(width: 0.5, color: Colors.black12))),
              ),
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfffee28e),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-1.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffb7e5ff),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-2.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xfffc9d8b),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-3.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffc3a0d4),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-4.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff74d3b7),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-5.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffffd08e),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1.0,
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/image-6.png",
                                width: 150,
                                height: 150,
                              ),
                              // Text("Dish $")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
