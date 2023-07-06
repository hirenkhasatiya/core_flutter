import 'package:flutter/material.dart';
import 'package:pr_5_timer/Utils/routs_utils.dart';
import 'package:pr_5_timer/views/screen/HomePage.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.home: (context) => const HomePage(),
      },
    );
  }
}

