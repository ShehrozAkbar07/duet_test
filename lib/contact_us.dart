import 'package:duettest/Const/const.dart';
import 'package:duettest/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({super.key});

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 32,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                "Contact Us",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 27),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                "We Are Just One Step Away Reach Out",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20.h,
              ),
              ContactUsContainer('Address ', 'Karachi,Pakistan', Colors.red,
                  Icons.location_on_outlined),
              SizedBox(
                height: 20.h,
              ),
              ContactUsContainer('Call Us ', '0331-2345678', Colors.green,
                  Icons.call_outlined),
              SizedBox(
                height: 20.h,
              ),
              ContactUsContainer('Address ', 'Karachi,Pakistan', Colors.purple,
                  Icons.email_outlined),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Name',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                  hintText: 'Subject',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Message',
                  hintText: 'Message',
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Button(
                texxt: 'Submit',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      // image: DecorationImage(image: AssetImage('assetName')
                      // )
                    ),
                  ),
                  const Text(
                    "ABC Agency",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24.sp,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget ContactUsContainer(
    String text1, String text2, Color colors, IconData icons) {
  return Container(
    height: 60.h,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color.fromARGB(255, 184, 184, 184)),
    child: Row(children: [
      SizedBox(
        width: 10.w,
      ),
      Icon(
        icons,
        color: colors,
        size: 30,
      ),
      SizedBox(
        width: 20.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            text1,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            text2,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      )
    ]),
  );
}
