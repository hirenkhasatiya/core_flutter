import 'package:clock_app/views/screen/inboxPage.dart';
import 'package:flutter/material.dart';
import 'package:clock_app/views/screen/HomePage.dart';
import 'package:clock_app/Utils/routsutils.dart';

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
        MyRoutes.inbox: (context) => const InboxPage(),
      },
    );
  }
}