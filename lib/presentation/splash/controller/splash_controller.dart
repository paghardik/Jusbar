import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxInt selectedIndex = 0.obs;
  void setIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
