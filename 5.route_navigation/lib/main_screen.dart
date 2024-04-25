import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataa;
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                var data = await Get.to(
                  HomeScreen(), arguments: ["DATA FROM MAIN"],
                  transition: Transition.cupertino,
                  duration: Durations.long4,
                  fullscreenDialog: false,
                  // curve: Curves.bounceInOut,
                );
                print(data);
                print(dataa);
                dataa = data;
                print(dataa);

                // Get.off(
                //   HomeScreen(),
                //   transition: Transition.cupertino,
                //   duration: Durations.long4,
                // );
              },
              child: Text("Go to Home Screen")),
          Text(dataa ?? "No Data"),
        ],
      )),
    );
  }
}
