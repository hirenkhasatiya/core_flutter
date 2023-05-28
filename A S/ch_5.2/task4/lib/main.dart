import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: Text("Gredient Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffff00cc),
                  Color(0xff333399),
                ],
              ),
              shape: BoxShape.rectangle,
              border: Border.all(width: 1.5, color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text("Flutter", style:
              TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20
              ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}