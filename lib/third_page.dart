import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/list_controller.dart';
import 'package:getx2/controllers/tap_controller.dart';
import 'package:getx2/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.find();
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => GestureDetector(
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: Center(
                        child: Text(
                            'value of x+y: ${Get.find<TapController>().z}',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white)))),
              ),
            ),
            Obx(
              () => GestureDetector(
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.all(18),
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 21, 156, 234)),
                    child: Center(
                        child: Text(
                            'Y value: ${Get.find<TapController>().y.value}',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white)))),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const MyHomePage());
              },
              child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: Center(
                      child: Text(
                          'X value: ${Get.find<TapController>().x.toString()}',
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white)))),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseY();
              },
              child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: const Center(
                      child: Text('Y value ++: ',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalXY();
              },
              child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: const Center(
                      child: Text('Add of X+Y ',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
            ),

            GestureDetector(
              onTap: () {
                listController.setValues(Get.find<TapController>().z);
              },
              child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: const Center(
                      child: Text('List ',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
            ),
          ],
        ),
      ),
    );
  }
}
