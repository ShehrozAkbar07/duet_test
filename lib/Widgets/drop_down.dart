import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class SelectDropDown extends StatefulWidget {
  const SelectDropDown({super.key});

  @override
  State<SelectDropDown> createState() => _SelectDropDownState();
}

class _SelectDropDownState extends State<SelectDropDown> {
  String? _mySelection;

  List<Map<String, String>> myJson = [
    {'Duration': 'Year'},
    {'Duration': 'Month'},
    {'Duration': 'Week'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 50.h,
      decoration: BoxDecoration(
          border: Border.all(color: black),
          borderRadius: BorderRadius.circular(6),
          color: bg),
      child: DropdownButton<String>(
        icon: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 28.sp,
          ),
        ),
        underline: const SizedBox(),
        isExpanded: true,
        hint: Row(
          children: [
            SizedBox(
              width: 15.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Year',
                      style: TextStyle(
                          fontSize: 15.sp,
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
            value: map['Duration'].toString(),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        map['Duration'].toString(),
                        style: TextStyle(
                            fontSize: 12.sp,
                            height: 1.4,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
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
