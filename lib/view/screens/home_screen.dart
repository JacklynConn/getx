import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/home_controller.dart';
import 'first_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  /*
  Obx is a widget that updates the UI whenever the value of the observable changes.

  GetBuilder
  if you want to use this only one time to rebuild the state or rebuild the widget,
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () => Column(
              children: [
                Text(
                  homeController.index.value.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MaterialButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.red,
                    onPressed: () {
                      Get.to(
                        () => FirstScreen(),
                        transition: Transition.leftToRight,
                      );
                    },
                    child: const Text('First Screen'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
