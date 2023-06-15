import 'package:appmania_1/views/Screen/DetailPage.dart';
import 'package:appmania_1/views/Screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:appmania_1/utils/RoutesUtils.dart';
import 'package:appmania_1/views/Screen/CartPage.dart';

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
        MyRoutes.detailPage: (context) => const DetailPage(),
        MyRoutes.cartPage: (context) => const CartPage(),
      },
    );
  }
}