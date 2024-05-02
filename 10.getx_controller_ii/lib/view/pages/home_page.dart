// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller_ii/controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  CounterController controller = CounterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Counter : ${controller.counter.value}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.increment();
                // Get.find<CounterController>().increment();
              },
              child: Text("Counter +"),
            ),
            ElevatedButton(
              onPressed: () => controller.decrement(),
              child: Text("Counter -"),
            )
          ],
        ),
      ),
    );
  }
}
