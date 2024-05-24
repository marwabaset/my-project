import 'dart:ui';

import 'package:get/get.dart';
import 'package:new_project/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedprelang = myServices.sharedPreferences.getString("lang");
    if (sharedprelang == "ar") {
      language = const Locale("ar");
    } else if (sharedprelang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
