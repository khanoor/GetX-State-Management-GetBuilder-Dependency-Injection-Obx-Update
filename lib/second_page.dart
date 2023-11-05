import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/third_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(onTap: () {
                Get.to(()=>const ThirdPage());
              },
              child: Container(
                  margin: const EdgeInsets.all(18),
                  width: double.maxFinite,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 21, 156, 234)),
                  child: const Center(
                      child: Text('3rdPage',
                          style: TextStyle(fontSize: 20, color: Colors.white)))),
            ),
                       


          ],
        ),
      ),);
  }
}