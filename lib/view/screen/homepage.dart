import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/recomendedcontroller.dart';
import 'package:new_project/view/widget/customappbar.dart';
import 'package:new_project/view/widget/customcard.dart';
import 'package:new_project/view/widget/recomende.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final RecomendeController recomendeController =
      Get.put(RecomendeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CustomAppBarHome(),
        //  RecomendedHome(),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 230, child: RecomendedHome()),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Courses",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        fontFamily: " Exo 2"),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 222, 240),
                thickness: 3,
                indent: 40,
                endIndent: 40,
                height: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomCardHome()
            ],
          ),
        ),
      ]),
    );
  }
}
