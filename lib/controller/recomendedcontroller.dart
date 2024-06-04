import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:new_project/controller/latestcontroller.dart';
import 'package:new_project/data/model/recommendemodel.dart';

class RecomendeController extends GetxController {
  var isVisible1 = true.obs;
  var isVisible2 = false.obs;
  
  void showSecond() {
    isVisible1.value = false;
    isVisible2.value = true;
  }

  var allrecommendedCourses = <Recommended>[].obs;
  var displayRecommended = <Recommended>[].obs;

  // var items =
  //  List.generate(Recommended[]..length, (index) => 'items $index').obs;
  int itemsDisplayed = 3;

  // void showMore() {
  //   if (itemsDisplayed.va < items.length) {
  //     itemsDisplayed.value += 5;
  //     if (itemsDisplayed.value > items.length) {
  //       int remainingItems = items.length - itemsDisplayed.value;
  //       itemsDisplayed.value += (remainingItems >= 5) ? 5 : remainingItems;
  //     }
  //   }
  // }

  final String token = '2|tAbh0a41BKTDBkQCOVMueIqqzvCfDe3nfktm7ZMY7a75df19';
  final String url = 'http://192.168.1.11:8000/api/v1/students/home';

  @override
  void onInit() {
    fetchRecommendedCourses();
    super.onInit();
  }

  void fetchRecommendedCourses() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    });
    print("yes");
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("true");
      final Map<String, dynamic> parsed = json.decode(response.body);
      final List<dynamic> courseslist = parsed['recommended'];

      allrecommendedCourses.value =
          courseslist.map((json) => Recommended.fromJson(json)).toList();

      addmoreRecommended();
    } else {
      print("false");
      throw Exception("failed");
    }
  }

  void addmoreRecommended() {
    if (itemsDisplayed >= allrecommendedCourses.length) {
      displayRecommended.value = List.from(allrecommendedCourses);
    } else {
      displayRecommended.value =
          List.from(allrecommendedCourses.take(itemsDisplayed));
    }
  }

  void showMore() {
    itemsDisplayed += 5;
    addmoreRecommended();
  }
}
