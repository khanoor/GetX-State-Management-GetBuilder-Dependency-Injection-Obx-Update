import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/tap_controller.dart';
import 'package:getx2/first_page.dart';
import 'package:getx2/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(
                builder: (context) {
                  return Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: Center(
                        child: Text(controller.x.toString(),
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white))),
                  );
                }
              ),
              GestureDetector(
                onTap: () {
                  controller.increaseX();
                },
                child: Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: const Center(
                        child: Text('Tap',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)))),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const FirstPage());
                },
                child: Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: const Center(
                        child: Text('First Page',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)))),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SecondPage());
                },
                child: Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: const Center(
                        child: Text('Second Page',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)))),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: const Center(
                      child: Text('Tap',
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
