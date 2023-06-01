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
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Exit",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pause",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Stop",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Close",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Delete",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,

                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                height: 80,
                width: 390,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  bottom: 5,
                  top: 5,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Exit",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}