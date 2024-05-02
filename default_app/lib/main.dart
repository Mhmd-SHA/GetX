import 'package:default_app/view/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter APP',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: CupertinoColors.systemBlue),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}