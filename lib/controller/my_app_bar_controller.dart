import 'package:get/get.dart';

class MyAppBarController extends GetxController {
  RxString searchText = ''.obs;

  void changeSearchText (String value) {
    searchText.value = value;
  }
}
