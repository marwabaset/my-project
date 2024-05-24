
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var page_Index = 0.obs ;
  var textValue = 0.obs;

  void changeIndex(int index){
    page_Index.value = index;
  }

  void increaseValue(){
    textValue.value++;
  }
}
