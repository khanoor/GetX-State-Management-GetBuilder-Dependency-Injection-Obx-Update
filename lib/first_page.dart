import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {
              Get.back();
            }, icon: const Icon(Icons.arrow_back)),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(18),
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 21, 156, 234)),
                child: const Center(
                    child: Text('Tap',
                        style: TextStyle(fontSize: 20, color: Colors.white)))),
                        GetBuilder<TapController>(
                          builder: (context) {
                            return Text(controller.x.toString());
                          }
                        ),

                        GestureDetector(
                          onTap: () {
                                          controller.decrease();            },
                          child: Container(
                                        margin: const EdgeInsets.all(18),
                                        width: double.maxFinite,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color.fromARGB(255, 21, 156, 234)),
                                        child:  const Center(
                                            child: Text('Decrease value',
                          style: TextStyle(fontSize: 20, color: Colors.white)))),
                        ),

          ],
        ),
      ),
    );
  }
}
