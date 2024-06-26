import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  // Get.put (first D I)
  // Get.put (controller);
  final HomeController homeController = Get.put(HomeController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.red,
              onPressed: () {
                homeController.displayName();
              },
              child: const Text('Display Name'),
            ),
          ),
        ],
      ),
    );
  }
}
