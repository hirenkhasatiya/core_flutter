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
        actions: [
          Icon(Icons.add),
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:List.generate(counter, (index) => Container(
              margin: EdgeInsets.all(5),
              height: 60,
              alignment: Alignment.center,
              color: Colors.lightBlue,
              child: Text("${index+1}"),
            ),growable: true,
            ),
          ),
        ),
      ),
    );
  }
}


