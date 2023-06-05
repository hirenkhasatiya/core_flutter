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
  int counter = 0;

  Color appbarBg = Colors.amber;

  late double w;

  @override
  void initState() {
    super.initState();
  }

  void increase() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calc"),
        leading: Icon(
          Icons.menu,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 190,
                margin: EdgeInsets.all(5),
                child: Align(
                  child: Text(
                    "$counter",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 100,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Ink(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counter-=2;
                        print("$counter");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 140,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      ),
                      child: Align(
                        child: Text(
                          "-2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Ink(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counter+=2;
                        print("$counter");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 140,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Align(
                        child: Text(
                          "+2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Ink(

                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counter-=4;
                        print("$counter");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 140,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Align(
                        child: Text(
                          "-4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Ink(

                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counter+=4;
                        print("$counter");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 140,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Align(
                        child: Text(
                          "+4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Ink(
              child: InkWell(
                onTap: () {
                  setState(() {
                    counter=0;
                    print("$counter");
                  });
                },
                child: Container(
                  height: 70,
                  width: 140,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: Align(
                    child: Text(
                      "clear",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
