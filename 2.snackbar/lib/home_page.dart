import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Get.closeCurrentSnackbar();
                // Get.closeAllSnackbars();
                Get.snackbar(
                  "Title",
                  "Message",
                  snackPosition: SnackPosition.TOP,
                  forwardAnimationCurve: Curves.elasticInOut,
                  icon: Icon(
                    Icons.done_outline_rounded,
                    color: Colors.green,
                  ),
                  isDismissible: false,
                  // mainButton: TextButton(
                  //   onPressed: () {},
                  //   child: Text("data"),
                  // ),
                );

                // Get.rawSnackbar(
                //     title: "title",
                //     message: "Message",
                //     snackPosition: SnackPosition.TOP);
                // Get.showSnackbar(GetSnackBar(
                //   title: "",
                //   messageText: Text("hi"),
                // ));
              },
              child: Text("show SnackBar"))),
    );
  }
}
