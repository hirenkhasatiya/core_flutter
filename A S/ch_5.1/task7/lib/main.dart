import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Opened Doors"),
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
                  width: 70,
                  color: Colors.white,
                ),
                right: BorderSide(
                  width: 70,
                  color: Colors.white,
                ),
                bottom: BorderSide(
                  width: 30,
                  color: Colors.black,
                ),
                top: BorderSide(
                  width: 30,
                  color: Colors.black,
                ),
              ),
              color: Colors.black,

            ),

          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}