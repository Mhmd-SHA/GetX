import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_controller/controller/mycontroller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  myController controller = myController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.student.value.name),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => controller.convertToUppercase(),
              child: Text("UpperCase"),
            ),
            ElevatedButton(
              onPressed: () => controller.convertToLowercase(),
              child: Text("lowercase"),
            )
          ],
        ),
      ),
    );
  }
}
