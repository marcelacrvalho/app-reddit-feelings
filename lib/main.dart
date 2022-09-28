import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/home/bindings/home_bindings.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';

void main() async {
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      title: 'Reddit Feeling',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      initialRoute: Routes.kHome,
      getPages: AppPages.routes,
      initialBinding: HomeBinding(),
    ),
  );
}