import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class CustomButton2 extends StatefulWidget {
  final String text;
  const CustomButton2({super.key, required this.text});

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: buttonColor,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 219, 207, 207),
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0, 2)), // no shadow color set, defaults to black
            // BoxShadow(color: Colors.white, offset: Offset(0, 0)),
            //               BoxShadow(color: Colors.white, offset: Offset(0, 0)),
          ]),
      height: 50.h,
      width: double.infinity,
      child: Center(
        child: AutoSizeText(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,

            color: buttontextColor,

            fontSize: 15.sp,
            //  color: Color(AppColors.titleText),
          ),
          minFontSize: 14,
          maxFontSize: 16,
        ),
      ),
    );
  }
}
