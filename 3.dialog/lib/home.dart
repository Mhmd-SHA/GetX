import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("show Cupertino Dialog"),
              onPressed: () {
                // Get.dialog(
                //   Material(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(15),
                //     child: Center(
                //       child: Container(
                //         height: 100,
                //         child: Column(
                //           children: [
                //             Text(
                //               "data",
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // );
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      actions: [
                        CupertinoDialogAction(
                          child: Text("Cancel"),
                          isDefaultAction: false,
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text("Confirm"),
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                      title: Text("This is A Cupertino Dialogue Box"),
                    );
                  },
                );
              },
            ),
            ElevatedButton(
              child: Text("show Dialog with GetX"),
              onPressed: () {
                Get.defaultDialog(
                  title: "This is the Title",
                  // custom: Text("data"),
                  content: Text("This is the Content "),
                  textCancel: "cancel",
                  textConfirm: "Confirm",
                  actions: [
                    CupertinoDialogAction(
                      child: Text("No"),
                      isDefaultAction: false,
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text("Yes"),
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
