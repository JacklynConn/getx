import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
          GetX<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Column(
                children: [
                  Text(
                    controller.index.value.toString(),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const FirstScreen(),
                        //   ),
                        // );
                        // Get.to(const FirstScreen(), transition: Transition.leftToRight);
                        //Get.toNamed('/firstPage');
                        controller.increaseIndex();
                      },
                      child: const Text('First Screen'),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
