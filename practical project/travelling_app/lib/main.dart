import 'package:flutter/material.dart';
import 'package:travelling_app/utils/routsutils.dart';
import 'package:travelling_app/view/screen/detailpage.dart';
import 'package:travelling_app/view/screen/homePage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.home: (context) => const HomePage(),
      },
    );
  }
}