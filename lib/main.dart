import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/core/localization/translation.dart';
import 'package:new_project/core/services/services.dart';
import 'package:new_project/view/screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp( const NewProject());
}

class NewProject extends StatelessWidget {
  const NewProject();

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
