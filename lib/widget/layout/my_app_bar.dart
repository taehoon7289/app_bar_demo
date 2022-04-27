import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_bar_demo/controller/my_app_bar_controller.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyAppBarController myAppBarController = Get.put(MyAppBarController());
    return SafeArea(
      child: Container(
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 20, right: 5, bottom: 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: '오늘의집 통합검색',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.grey[300],
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8.0)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () {
                      print('TextField onTap');
                    },
                    onChanged: (val) {
                      print('onChanged $val');
                      myAppBarController.changeSearchText(val);
                    },
                  ),
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextButton(
                          onPressed: () {
                            print('bookmark TextButton onPress');
                            FocusScope.of(context).unfocus();
                          },
                          child: Icon(
                            Icons.bookmark_outline,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      child: TextButton(
                        onPressed: () {
                          print('shopping_cart_outlined TextButton onPress');
                        },
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    )),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
