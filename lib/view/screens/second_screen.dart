import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  // Get.put (first D I)
  // Get.put (controller);
  final homeController1 = Get.lazyPut(() => HomeController());
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GetBuilder<HomeController>(
            builder: (controller) {
              return Text(
                controller.name,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              );
            },
          ),
        ],
      ),
    );
  }
}
