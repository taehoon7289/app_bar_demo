import 'package:app_bar_demo/page/home/my_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '오늘은 앱바를 만들꺼얌',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.grey),
      home: MyHome(),
    );
  }
}
