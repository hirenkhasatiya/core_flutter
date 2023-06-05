import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("An Indian Flag"),
          centerTitle: true,
        ),
        body: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.lightBlue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text("Flutter", style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}