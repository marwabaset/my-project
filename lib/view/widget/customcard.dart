import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/categorieshome.dart';
import 'package:new_project/controller/favorite.dart';

class CustomCardHome extends StatelessWidget {
  final CategoriesHomeController categoriesController =
      Get.put(CategoriesHomeController());
  CustomCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      categoriesController.fetchCategories();
    });
    FavoriteController controllerfav = Get.put(FavoriteController());
    return Obx(() => GridView.builder(
          itemCount: categoriesController.categories.length,
          shrinkWrap: true,
          //  physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) {
//controllerfav.isFavorite[]
            return InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
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
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple[50]),
                child: Column(
                  children: [
                    Obx(() {
                      if (categoriesController
                          .categories[index].image!.isEmpty) {
                        return Image.asset("assets/image/logo.png");
                      } else {
                        return Image.network(
                          categoriesController.categories[index].image!,
                          alignment: Alignment.topCenter,
                        );
                      }
                    }),
                    Text(categoriesController.categories[index].name!,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: "Exo 2",
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
