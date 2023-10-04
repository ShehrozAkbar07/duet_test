// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../Controller/Bottom Nav/bottom_nav_controller.dart';
// import '../Const/color.dart';

// class BottomNavScreen extends StatelessWidget {
//   BottomNavController controller = Get.put(BottomNavController());

//   @override
//   Widget build(BuildContext context) {
//     print("item ==> ${controller.pageIndex.value}");
//     return GetBuilder(
//       init: controller,
//       builder: (_) {
//         return Scaffold(
//           body: controller.pages.value.elementAt(controller.pageIndex.value),
//           bottomNavigationBar: BottomNavBarWidget(),
//         );
//       },
//     );
//   }
// }

// class BottomNavBarWidget extends StatelessWidget {
//   BottomNavController controller = Get.put(BottomNavController());

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return GetBuilder<BottomNavController>(
//       init: controller,
//       assignId: true,
//       builder: (controller) {
//         return Container(
//           height: 60,
//           decoration: const BoxDecoration(
//               color: bakground,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey,
//                   spreadRadius: 3,
//                   blurRadius: 4,
//                   offset: Offset(0, 0), // changes position of shadow
//                 ),
//               ]),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               InkWell(
//                 onTap: () {
//                   controller.pageIndex.value = 0;
//                   controller.update();
//                 },
//                 child: Column(
//                   children: [
//                     SizedBox(height: size.height * 0.01),
//                     controller.pageIndex.value == 0
//                         ? const Icon(Icons.home, color: primary)
//                         : const Icon(Icons.home, color: black),
//                     SizedBox(height: size.height * 0.005),
//                     Text(
//                       "Trading",
//                       style: controller.pageIndex.value == 0
//                           ? const TextStyle(
//                               color: primary,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500)
//                           : const TextStyle(
//                               color: Colors.black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//               ),
//               // IconButton(
//               //   enableFeedback: false,
//               //   onPressed: () {
//               //     controller.pageIndex.value = 0;
//               //     controller.update();
//               //   },
//               //   icon: controller.pageIndex.value == 0
//               //       ? Icon(
//               //           Icons.home,
//               //           // color: primary,
//               //           // size: 30.sp,
//               //         )
//               //       : Icon(
//               //           Icons.home,
//               //           // color: whiteColor,
//               //           // size: 30.sp,
//               //         ),
//               // ),

//               InkWell(
//                 onTap: () {
//                   controller.pageIndex.value = 1;
//                   controller.update();
//                 },
//                 child: Column(
//                   children: [
//                     SizedBox(height: size.height * 0.01),
//                     controller.pageIndex.value == 1
//                         ? const Icon(Icons.shopping_basket, color: primary)
//                         : const Icon(Icons.shopping_basket, color: black),
//                     SizedBox(height: size.height * 0.005),
//                     Text(
//                       "Orders",
//                       style: controller.pageIndex.value == 1
//                           ? const TextStyle(
//                               color: primary,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500)
//                           : const TextStyle(
//                               color: black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   controller.pageIndex.value = 2;
//                   controller.update();
//                 },
//                 child: Column(
//                   children: [
//                     SizedBox(height: size.height * 0.01),
//                     controller.pageIndex.value == 2
//                         ? const Icon(Icons.copy, color: primary)
//                         : const Icon(Icons.copy, color: black),
//                     SizedBox(height: size.height * 0.005),
//                     Text(
//                       "Copytrading",
//                       style: controller.pageIndex.value == 2
//                           ? const TextStyle(
//                               color: primary,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500)
//                           : const TextStyle(
//                               color: black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   controller.pageIndex.value = 3;
//                   controller.update();
//                 },
//                 child: Column(
//                   children: [
//                     SizedBox(height: size.height * 0.01),
//                     controller.pageIndex.value == 3
//                         ? const Icon(Icons.wallet, color: primary)
//                         : const Icon(Icons.wallet, color: black),
//                     SizedBox(height: size.height * 0.005),
//                     Text(
//                       "Accounts",
//                       style: controller.pageIndex.value == 3
//                           ? const TextStyle(
//                               color: primary,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500)
//                           : const TextStyle(
//                               color: black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   controller.pageIndex.value = 4;
//                   controller.update();
//                 },
//                 child: Column(
//                   children: [
//                     SizedBox(height: size.height * 0.01),
//                     controller.pageIndex.value == 4
//                         ? const Icon(Icons.person, color: primary)
//                         : const Icon(Icons.person, color: black),
//                     SizedBox(height: size.height * 0.005),
//                     Text(
//                       "Profile",
//                       style: controller.pageIndex.value == 4
//                           ? const TextStyle(
//                               color: primary,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500)
//                           : const TextStyle(
//                               color: black,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
