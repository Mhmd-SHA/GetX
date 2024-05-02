import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_controller/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Controller',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: CupertinoColors.systemBlue),
      ),
      home: HomePage(),
    );
  }
}
