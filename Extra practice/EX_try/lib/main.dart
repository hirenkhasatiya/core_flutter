import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My AppBar"),
        centerTitle: true,
        backgroundColor: const Color(0xff314755),
      ),
      body: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff314755),
              Color(0xff26a0da),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: const Alignment(0, -0.5),
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue.withOpacity(0.4),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(8, 8),
                  blurRadius: 12,
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                counter++;
                print("Button tapped $counter times...");
              },
              onLongPress: () {
                print("Button long pressed...");
              },
              child: Container(
                height: 80,
                width: 160,
                alignment: Alignment.center,
                child: Text(
                  "BUTTON $counter",
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}