import 'package:app_bar_demo/controller/my_bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myBottomNavigationBarController =
        Get.put(MyBottomNavigationBarController());
    return Obx(() => Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 1.0))),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: BottomNavigationBar(
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    currentIndex:
                        myBottomNavigationBarController.currentIndex.value,
                    onTap: (index) {
                      myBottomNavigationBarController.updateCurrentIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: '홈'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.local_convenience_store_rounded),
                          label: '스토어'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.man_sharp), label: '인테리어시공'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: '마이페이지'),
                    ]),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, shape: CircleBorder()),
                    onPressed: () {
                      print('ElevatedButton onPressd');
                    },
                    child: Icon(Icons.add),
                  ))
            ],
          ),
        ));
  }
}
