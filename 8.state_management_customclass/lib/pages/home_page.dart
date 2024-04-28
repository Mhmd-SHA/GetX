import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:state_management_customclass/model/student.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  RxBool isClicked = false.obs;

  var student = Student(name: "Shafir", age: 24).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                textAlign: TextAlign.center,
                "Student Name is ${student.value.name.toString()}\nAge is ${student.value.age}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Obx(
            () => ElevatedButton(
                style: isClicked.value == true
                    ? ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      )
                    : ButtonStyle(),
                onPressed: () {
                  isClicked.value = true;
                  student.update((value) {
                    value?.name = value.name.toString().toUpperCase();
                  });
                },
                child: Text("UpperCase")),
          ),
          Obx(
            () => ElevatedButton(
                style: isClicked.value == false
                    ? ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      )
                    : ButtonStyle(),
                onPressed: () {
                  isClicked.value = false;
                  student.update((value) {
                    value?.name = value.name.toString().toLowerCase();
                  });
                },
                child: Text("lowercase")),
          ),
        ],
      ),
    );
  }
}
