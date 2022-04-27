import 'package:app_bar_demo/controller/my_app_bar_controller.dart';
import 'package:app_bar_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:app_bar_demo/widget/layout/my_app_bar.dart';
import 'package:app_bar_demo/widget/layout/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyBottomNavigationBarController myBottomNavigationBarController =
        Get.put(MyBottomNavigationBarController());
    MyAppBarController myAppBarController = Get.put(MyAppBarController());
    return GestureDetector(
      onTap: () {
        print('GestureDetector onTap 감지');
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: MyAppBar(),
        body: Container(
          child: Center(
            child: Obx(() => Text(
                'bodybody${myBottomNavigationBarController.currentIndex.value}${myAppBarController.searchText.value}')),
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
