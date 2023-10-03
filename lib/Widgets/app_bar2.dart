import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class Appbar2 extends StatefulWidget {
  final String text;
  const Appbar2({super.key, required this.text});

  @override
  State<Appbar2> createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
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
            height: 15.h,
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
            padding: EdgeInsets.only(left: 14.w),
            child: Text(widget.text,
                style: TextStyle(
                  color: black,
                  wordSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                )),
          ),
        ],
      ),
    );
  }
}
