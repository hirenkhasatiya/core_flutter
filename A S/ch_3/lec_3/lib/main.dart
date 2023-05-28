import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Flutter App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Text("Red & white",
            style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.combine([
                TextDecoration.underline,
              ]),
              decorationStyle: TextDecorationStyle.double,
              decorationColor: Colors.amber,
              fontSize: 40,
            ),

          ),
        ),
        // backgroundColor: Colors.black,
      ),
    ),
  );
}