import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("3D Cube"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 30,
                  color: Colors.teal.shade400,
                ),
                right: BorderSide(
                  width: 30,
                  color: Colors.teal.shade400,
                ),
                bottom: BorderSide(
                  width: 30,
                  color: Colors.teal.shade300,
                ),
                top: BorderSide(
                  width: 30,
                  color: Colors.teal.shade300,
                ),
              ),
              color: Colors.teal,

            ),

          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}