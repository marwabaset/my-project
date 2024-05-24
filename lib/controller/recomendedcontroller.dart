import 'package:get/get.dart';

class RecomendeController extends GetxController {
  var items = List.generate(20, (index) => 'items $index').obs;
  var itemsDisplayed = 3.obs;
   void showMore() {
    if (itemsDisplayed.value < items.length) {
      itemsDisplayed.value += 10; 
      if (itemsDisplayed.value > items.length) {
           int remainingItems = items.length - itemsDisplayed.value;
      itemsDisplayed.value += (remainingItems >= 10) ? 10 : remainingItems;
        
      }
    }
  }
}
