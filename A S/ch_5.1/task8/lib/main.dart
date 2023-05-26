import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Emoji"),
          centerTitle: true,
        ),
        body: Align(

          child: Container(
            height: 300,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
             child: Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
               alignment: Alignment(0,-40),
               child: Container(
                 height: 249,
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.orange,
                 ),
                 alignment: Alignment(-0.40,-0.35),
                 child: Container(
                   height: 60,
                   width: 60,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                   ),
                   alignment: Alignment(250,-0),
                   child: Container(
                     width: 59,
                     height: 59,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                     ),
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