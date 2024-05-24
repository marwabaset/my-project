import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/bottom_navigation_controller.dart';
import 'package:new_project/view/screen/accountpage.dart';
import 'package:new_project/view/screen/homepage.dart';
import 'package:new_project/view/screen/notices.dart';

import '../screen/favoritepage.dart';

// ignore: must_be_immutable
class Curved_NB extends StatelessWidget {
  Curved_NB({super.key});
  int page = 0;
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final screens = [
    HomePage(),
    HomePage(),
    Favorite(),
    Notices(),
    Account(),
  ];
  final items = const [
    Icon(
      Icons.home,
      size: 25,
      color: Colors.white,
    ),
    Icon(
      Icons.add,
      size: 25,
      color: Colors.white,
    ),
    Icon(
      Icons.favorite,
      size: 25,
      color: Colors.white,
    ),
    Icon(
      Icons.message_outlined,
      size: 25,
      color: Colors.white,
    ),
    Icon(
      Icons.person,
      size: 25,
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          children: screens,
          index: bottomNavigationController.page_Index.value,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Color(0xff8D6DFE),
        color: Color(0xff8D6DFE),
        animationDuration: const Duration(milliseconds: 500),
        items: items,
        index: 0,
        onTap: (index) => {bottomNavigationController.changeIndex(index)},
      ),
    );
  }
}
