import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Letter Cover"),
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
                  width: 75,
                  color: Colors.green,
                ),
                right: BorderSide(
                  width: 75,
                  color: Colors.green,
                ),
                bottom: BorderSide(
                  width: 75,
                  color: Colors.green.shade400,
                ),
                top: BorderSide(
                  width: 75,
                  color: Colors.green.shade400,
                ),
              ),
              color: Colors.green,

            ),

          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}