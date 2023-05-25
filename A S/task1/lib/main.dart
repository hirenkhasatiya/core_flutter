import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("My App"),
            centerTitle: true,
          ),
        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            child: Center(
              child: Text(
                "OOOO",
                style: TextStyle(
                  letterSpacing: -30,
                  fontSize: 85,
                ),
              ),
            ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 25,
              ),
              color: Colors.greenAccent

            ),

            ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
    ),
  );
}
