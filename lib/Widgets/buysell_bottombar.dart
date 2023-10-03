// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import '../AppRoutes/routes.dart';
// import '../Const/color.dart';

// class BuySellBottomBar extends StatefulWidget {
//   const BuySellBottomBar({super.key});

//   @override
//   State<BuySellBottomBar> createState() => _BuySellBottomBarState();
// }

// class _BuySellBottomBarState extends State<BuySellBottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70.h,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           color: bakground,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(14), topRight: Radius.circular(14))),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20.w),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(
//               onTap: () {
//                 Get.toNamed(AppRoutes.buyforex);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: buttonColor,
//                     boxShadow: const [
//                       BoxShadow(
//                           color: Color.fromARGB(255, 219, 207, 207),
//                           blurRadius: 5,
//                           spreadRadius: 3,
//                           offset: Offset(
//                               0, 5)), // no shadow color set, defaults to black
//                       // BoxShadow(color: Colors.white, offset: Offset(0, 0)),
//                       //               BoxShadow(color: Colors.white, offset: Offset(0, 0)),
//                     ]),
//                 height: 50.h,
//                 width: 140.w,
//                 child: const Center(
//                   child: Text(
//                     "Buy",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: black, fontSize: 18,
//                       //  color: Color(AppColors.titleText),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Get.toNamed(AppRoutes.sellforex);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: buttonColor,
//                     boxShadow: const [
//                       BoxShadow(
//                           color: Color.fromARGB(255, 219, 207, 207),
//                           blurRadius: 5,
//                           spreadRadius: 3,
//                           offset: Offset(
//                               0, 5)), // no shadow color set, defaults to black
//                       // BoxShadow(color: Colors.white, offset: Offset(0, 0)),
//                       //               BoxShadow(color: Colors.white, offset: Offset(0, 0)),
//                     ]),
//                 height: 50.h,
//                 width: 140.w,
//                 child: const Center(
//                   child: Text(
//                     "Sell",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: black, fontSize: 18,
//                       //  color: Color(AppColors.titleText),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
