import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/homecontroller.dart';
import 'package:new_project/controller/latestcontroller.dart';
import 'package:new_project/controller/recomendedcontroller.dart';
import 'package:new_project/view/widget/home/latest.dart';

class RecomendedHome extends StatelessWidget {
  RecomendedHome();
  final HomeController homeController = Get.put(HomeController());
  final RecomendeController controller = Get.put(RecomendeController());

  final LatestController controllerLatest = Get.put(LatestController());

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: AnimatedButton(
                height: 40,
                width: 150,
                onPress: () {
                  homeController.changeTabIndex(0);
                },
                text: 'Recommended',
                gradient:
                    LinearGradient(colors: [Colors.pink, Colors.blue.shade700]),
                selectedGradientColor:
                    LinearGradient(colors: [Colors.lightBlue, Colors.purple]),
                selectedTextColor: Colors.white,
                transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                isReverse: true,
                borderColor: Colors.white,
                borderRadius: 20,
              ),
            )),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: AnimatedButton(
                  height: 40,
                  width: 150,
                  onPress: () {
                    homeController.changeTabIndex(1);
                  },
                  text: 'Latest',
                  gradient: LinearGradient(
                      colors: [Colors.pink, Colors.blue.shade700]),
                  selectedGradientColor:
                      LinearGradient(colors: [Colors.lightBlue, Colors.purple]),
                  selectedTextColor: Colors.white,
                  transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                  isReverse: true,
                  borderColor: Colors.white,
                  borderRadius: 20,
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
          child: Stack(children: [
        Obx(() {
          if (homeController.tabIndex.value == 0) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.displayRecommended.length + 1,
                itemBuilder: (context, index) {
                  if (index == controller.displayRecommended.length) {
                    return controller.itemsDisplayed <
                            controller.allrecommendedCourses.length
                        ? IconButton(
                            style: ButtonStyle(),
                            onPressed: controller.showMore,
                            icon: Icon(Icons.navigate_next),
                          )
                        : const SizedBox.shrink();
                  }
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 15.0, left: 4, bottom: 8),
                      child: Container(
                        width: 300,

                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff8D6DFE),
                                  Colors.deepOrange.shade300,
                                  //Color(0xff8D6DFE),
                                  Colors.white.withOpacity(0.9),
                                ]),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 20,
                                blurStyle: BlurStyle.inner,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.deepPurple[50]),
                        //  fromARGB(255, 229, 222, 240)
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Expanded(
                            //    child:
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Obx(() {
                                if (controller.allrecommendedCourses[index]
                                    .image!.isEmpty) {
                                  return Image.asset(
                                    'assets/image/logo.png',
                                    height: 150,
                                    width: 100,
                                  );
                                } else {
                                  return Image.network(
                                    controller
                                        .allrecommendedCourses[index].image!,
                                    height: 70,
                                    width: 20,
                                    alignment: Alignment.topCenter,
                                  );
                                }
                              }),
                            ),
                            //    ),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15.0, bottom: 8),
                                        child: Obx(() => Text(
                                            controller
                                                .allrecommendedCourses[index]
                                                .categoryName!,
                                            style: const TextStyle(
                                                fontSize: 25,
                                                fontFamily: "Exo 2",
                                                fontWeight: FontWeight.w500))),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Obx(() => Text(
                                          controller
                                              .allrecommendedCourses[index]
                                              .name!,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Exo 2",
                                              fontWeight: FontWeight.w500))),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Obx(
                                        () => Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0.0),
                                          child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite,
                                              size: 18,
                                              color: Colors.red.shade700,
                                            ),
                                            label: Text(
                                                '${controller.allrecommendedCourses[index].totalLikes}  Likes',
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontFamily: "Exo 2",
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Obx(
                                        () => Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, bottom: 15),
                                          child: Text(
                                              '${controller.allrecommendedCourses[index].createdFrom}  ',
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontFamily: "Exo 2",
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ])
                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return LatestHome();
          }
        })
      ])),
    ]);
  }
}
