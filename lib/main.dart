import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trash_classification/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: Routes.CAMERA_DETECTOR,
              getPages: AppPages.routes,
            );
          } else {
            return FutureBuilder(
                builder: (context, snapshot) => const SplashScreen());
          }
        });
  }
}
