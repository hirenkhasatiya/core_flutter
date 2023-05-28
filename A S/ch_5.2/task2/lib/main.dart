import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dark Shadow Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(width: 1.5, color: Colors.red),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Text("GO", style:
              TextStyle(
                  color: Colors.white,
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

