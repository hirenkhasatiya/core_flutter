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
        title: const Text("Dynamic List"),

        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:List.generate(counter, (index) => Container(
              margin: EdgeInsets.all(5),
              height: 100,
              decoration: BoxDecoration(
              color: Colors.primaries[
                index % 2 +4
              ].shade600,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: Text(
                  "${index+1}",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white
                ),
              ),
            ),
            ),
          ),
        ),
      ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(left: 260),
          child: Row(
            children: [
              FloatingActionButton(
                backgroundColor:  Colors.blue.shade900,
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
              SizedBox(width: 10,),
              FloatingActionButton(
                backgroundColor:  Colors.blue.shade900,
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
            ],
          ),
        ),
    );
  }
}


