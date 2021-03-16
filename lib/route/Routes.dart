import 'package:get/get.dart';

import 'package:huun_community/app.dart';
import 'package:huun_community/page/screen/screen_view.dart';
import 'package:huun_community/page/login/login_view.dart';

abstract class Routes {
  static const Initial = '/';
  static const ScreenPage = '/screenPage';
  static const LoginPage = '/loginPage';
}

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.Initial, page: () => App()),
    GetPage(name: Routes.ScreenPage, page: () => ScreenPage()),
    GetPage(name: Routes.LoginPage, page: () => LoginPage()),
  ];
}
