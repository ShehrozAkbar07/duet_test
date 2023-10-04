import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'AppRoutes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: ((context, child) {
        return GetMaterialApp(
          title: "Trading App",
          debugShowCheckedModeBanner: false,
          getPages: AppRoutes.appRoutes,
          initialRoute: AppRoutes.splash,
        );
      }),
    );
  }
}
