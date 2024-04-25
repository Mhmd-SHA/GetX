import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX BottomSheet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("GetX BottomSheet with dynamic theme"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Wrap(
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text(
                          "Light Theme",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      Divider(
                        indent: 15,
                        endIndent: 15,
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Theme",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      )
                    ],
                  ),
                ],
              ),
              barrierColor: Colors.transparent,
              backgroundColor:
                  Get.isDarkMode == true ? Colors.blue : Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              enableDrag: true,
              isDismissible: true,
            );
          },
          child: Text("Open BottomSheet"),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
