import 'package:get/get.dart';

class MyBottomNavigationBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateCurrentIndex(int value) {
    currentIndex.value = value;
  }
}
