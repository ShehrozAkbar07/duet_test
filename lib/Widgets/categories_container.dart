import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class CategoriesContainer extends StatefulWidget {
  final String text;
  const CategoriesContainer({
    super.key,
    required this.text,
  });

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          widget.text,
          style: TextStyle(color: whiteColor, fontSize: 16.sp),
        ),
      ),
    );
  }
}
