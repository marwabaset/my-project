import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/onboardingcontroller.dart';
import 'package:new_project/data/datasource/static/static.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (Val) {
          controller.onPagechanged(Val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 130.0),
                  child: Image.asset(
                    onBoardingList[i].image!,
                    width: 380,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'Playfair Display',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].text!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Playfair Display',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 128, 127, 127)),
                      )),
                )
              ],
            ));
  }
}
