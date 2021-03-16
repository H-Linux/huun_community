import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route/Routes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: Routes.Initial,
    getPages: AppPages.pages,
    defaultTransition: Transition.rightToLeft,
  ));
}
