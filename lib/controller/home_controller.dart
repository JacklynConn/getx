import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "John";
  RxInt index = 0.obs;

  void increaseIndex() {
    index.value++;
    // update();
  }
}
