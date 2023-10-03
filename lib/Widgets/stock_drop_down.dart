import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class SelectSourceDropDown extends StatefulWidget {
  const SelectSourceDropDown({super.key});

  @override
  State<SelectSourceDropDown> createState() => _SelectSourceDropDownState();
}

class _SelectSourceDropDownState extends State<SelectSourceDropDown> {
  String? _mySelection;

  List<Map<String, String>> myJson = [
    {
      "image":
          "https://media.istockphoto.com/id/1127371686/vector/nigeria-round-flag-vector-flat-icon.jpg?s=612x612&w=0&k=20&c=sbBN-ZJtm69xFrIbYrgT9goWw1tizuMSgr__Jl-A0no=",
      'title': "Nigeria",
    },
    {
      "image":
          "https://media.istockphoto.com/id/955320026/vector/united-states-flag-icon.jpg?s=612x612&w=0&k=20&c=H_7queZAVZk-Qp30pAbM-bfh64aO4bXBEC6ws_l6wNI=",
      'title': "United States",
    },
    {
      "image":
          "https://media.istockphoto.com/id/1324673683/vector/great-britain-flag-union-jack-round-logo-circle-icon-of-united-kingdom-flag-vector.jpg?s=612x612&w=0&k=20&c=Uebd1fcMXZ3QkOoVoOjteIXlej3KoTpEjqgnwEehk8g=",
      'title': "United Kingdom",
    },
    {
      "image":
          "https://media.istockphoto.com/id/1254113914/vector/argentina-round-flag-graphics-design.jpg?s=612x612&w=0&k=20&c=QduH_Y8TyFfLsNAV7GJHOVsaRb8tHaN4sHB9O2ddevw=",
      'title': "Argentina",
    },
    {
      "image":
          "https://media.istockphoto.com/id/1368233932/vector/austria-flag-in-circle-shape-isolated-on-jpg-or-transparent-background-symbol-of-austria.jpg?s=612x612&w=0&k=20&c=bD8Y_5tq9VHlfdWY0pfFgr3Y_XZrE8EFV6dSsnEFO8o=",
      'title': "Austria",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 60.h,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 219, 207, 207),
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0, 2)),
          ],
          border: Border.all(width: 1, color: black),
          borderRadius: BorderRadius.circular(16),
          color: bg),
      child: DropdownButton<String>(
        icon: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 20.sp,
          ),
        ),
        underline: const SizedBox(),
        isExpanded: true,
        hint: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Country',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
        value: _mySelection,
        onChanged: (newValue) {
          setState(() {
            _mySelection = newValue;
          });
        },
        items: myJson.map((Map map) {
          return DropdownMenuItem<String>(
            value: map['title'].toString(),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                  child: Image.network(
                    map['image'].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(map['title'].toString(),
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
