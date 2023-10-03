import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Const/color.dart';

class Appbarr extends StatefulWidget {
  final String? heading;
  final String? subheading;

  Appbarr({this.heading, this.subheading});

  @override
  State<Appbarr> createState() => _AprbarrState();
}

class _AprbarrState extends State<Appbarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 202, 195, 195),
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(0, 4)),
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              height: 70.h,
              width: 90.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain),
                // color: black
              ),
            ),
          ),
          // SizedBox(
          //   height: 30.h,
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: black,
                    size: 21.sp,
                  ),
                ),
                AutoSizeText(
                  widget.heading!,
                  style: TextStyle(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                  ),
                  minFontSize: 17,
                  maxFontSize: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: AutoSizeText(
              widget.subheading!,
              style: const TextStyle(
                  color: black, fontWeight: FontWeight.w500, fontSize: 15),
              minFontSize: 14,
              maxFontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
