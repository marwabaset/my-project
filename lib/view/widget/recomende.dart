import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/recomendedcontroller.dart';

class Recomended extends StatelessWidget {
  Recomended({super.key});
  final RecomendeController controller = Get.put(RecomendeController());
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 10.0, right: 140, bottom: 4),
        child: Text(
          "Recomended Courses:",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, fontFamily: " Exo 2"),
        ),
      ),
      Container(
          height: 150,
          child: Obx(
            () => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.itemsDisplayed.value + 1,
                itemBuilder: (context, index) {
                  if (index < controller.itemsDisplayed.value) {
                    return InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, left: 4, bottom: 8),
                        child: Container(
                          width: 180,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurple[50]),
                          //  fromARGB(255, 229, 222, 240)
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image/logo.png",
                                height: 105,
                                //  width: 190,
                              ),
                              const Text("flutter",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Exo 2",
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else if (index == controller.itemsDisplayed.value &&
                      controller.itemsDisplayed.value !=
                          controller.items.length) {
                    return IconButton(
                      style: ButtonStyle(),
                      onPressed: controller.showMore,
                      icon: Icon(Icons.navigate_next),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                }),
          )),
    ]);
  }
}
