import 'package:get/get.dart';

import 'screen_state.dart';

class ScreenLogic extends GetxController {
  final state = ScreenState();

  var count = 0.obs;
  increment() => count++;
}
