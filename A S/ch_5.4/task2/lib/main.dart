import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
  }

  void increase() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
        leading: Icon(
          Icons.menu,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Align(
        child: Column(
          children: [
            Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Exit    ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 280),
                    Icon(
                      Icons.exit_to_app,
                      size: 30,
                    ),
                    ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Play   ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 280),
                    Icon(
                      Icons.play_arrow,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Pause ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 270),
                    Icon(
                      Icons.pause,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Stop  ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 280),
                    Icon(
                      Icons.stop,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Close",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 280),
                    Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),Align(
              child: Container(
                height: 100,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 280),
                    Icon(
                      Icons.email,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}