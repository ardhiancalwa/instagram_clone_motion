import 'package:deep_dive_get_cli/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  final homeController = Get.put(HomeController());
  runApp(
    Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme:
            homeController.isDark.value ? ThemeData.dark() : ThemeData.light(),
      ),
    ),
  );
}
