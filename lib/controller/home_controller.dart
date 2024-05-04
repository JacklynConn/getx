import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "John";
  int index = 0;

  void increaseIndex() {
    index++;
    update();
  }
}
