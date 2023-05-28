import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("An Indian Flag"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 170,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange.shade600,
                  Colors.white,
                  Colors.green.shade600,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              shape: BoxShape.rectangle,
              border: Border.all(width: 1.5, color: Colors.white),
            ),
            child: Center(
              child: Text("✱", style:
              TextStyle(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
              ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}