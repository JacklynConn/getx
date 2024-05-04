import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "";
  RxInt index = 0.obs;

  void increaseIndex() {
    index.value++;
    // update();
  }

  void displayName() {
    name = "John Doe";
    update();
  }
}
