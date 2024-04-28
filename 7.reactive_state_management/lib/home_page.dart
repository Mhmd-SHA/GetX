import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  RxInt counter = 0.obs;

  void counterInc() {
    counter++;
    print(counter);
  }

  void counterDec() {
    if (counter.value != 0) {
      counter--;
      print(counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive State Management",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Counter Value : ${counter.value}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          ElevatedButton(
              onPressed: () => counterInc(),
              child: Text("Counter +",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
          ElevatedButton(
              onPressed: () => counterDec(),
              child: Text("Counter -",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)))
        ],
      )),
    );
  }
}
