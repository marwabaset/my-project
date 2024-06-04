import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/latestcontroller.dart';
import 'package:new_project/controller/recomendedcontroller.dart';

class LatestHome extends StatelessWidget {
  LatestHome();

  final LatestController controller = Get.put(LatestController());
  final RecomendeController controller1 = Get.put(RecomendeController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.displayLatest.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 4, bottom: 8),
              child: Container(
                height: 100,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple[50]),
                //  fromARGB(255, 229, 222, 240)
                child: Column(
                  children: [
                    Expanded(
                      child: Obx(() {
                        if (controller.alllatest[index].image!.isEmpty) {
                          return Image.asset(
                            "assets/image/logo.png",
                            height: 40,
                          );
                        } else {
                          return Image.network(
                            controller.alllatest[index].image!,
                            height: 40,
                            alignment: Alignment.topCenter,
                          );
                        }
                      }),
                    ),
                    Expanded(
                      child: Obx(() {
                        if (controller.alllatest[index].name!.isEmpty) {
                          return const Text("is empty",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Exo 2",
                                  fontWeight: FontWeight.w500));
                        } else {
                          return Text(controller.alllatest[index].categoryName!,
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Exo 2",
                                  fontWeight: FontWeight.w500));
                        }
                      }),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Text(
                                'Total Like: ${controller.alllatest[index].totalLikes}',
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontFamily: "Exo 2",
                                    fontWeight: FontWeight.w500)),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(left: 0),
                            onPressed: () {},
                            iconSize: 15,
                            icon: const Icon(Icons.favorite),
                            color: Colors.red[700],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
          //return null;

          //  else if (index == itemsDisplayed.value &&
          //       itemsDisplayed.value != items.length) {
          //     return IconButton(
          //       style: ButtonStyle(),
          //       onPressed: showMore,
          //       icon: Icon(Icons.navigate_next),
          //     );
          //   } else {
          //     return SizedBox.shrink();
          //   }
        });
  }
}
